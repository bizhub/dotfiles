#!/usr/bin/env bash
set -euo pipefail

# Collect working dirs from containers' compose labels
mapfile -t paths < <(docker ps -a --format '{{.ID}}' \
  | while read -r id; do
      docker inspect -f '{{index .Config.Labels "com.docker.compose.project.working_dir"}}' "$id" 2>/dev/null
    done \
  | awk 'NF' \
  | awk '!seen[$0]++')  # deduplicate

if [[ ${#paths[@]} -eq 0 ]]; then
  dunstify -i " " "Sail" "No Docker Compose projects with working_dir label found"
  exit 0
fi

removed=()
failed=()

for p in "${paths[@]}"; do
  # defensive checks
  if [[ -z "$p" ]]; then
    continue
  fi

  if [[ ! -d "$p" ]]; then
    failed+=("$p (missing dir)")
    continue
  fi

  sail_bin="$p/vendor/bin/sail"
  if [[ ! -x "$sail_bin" ]]; then
    failed+=("$p (no vendor/bin/sail)")
    continue
  fi

  # Run sail down in that project directory
  if (cd "$p" && "$sail_bin" down); then
    removed+=("$p")
  else
    failed+=("$p (sail down failed)")
  fi
done

# Build human-friendly notification
msg=""
if [[ ${#removed[@]} -gt 0 ]]; then
  msg+="Removed:\n"
  for r in "${removed[@]}"; do msg+="$r\n"; done
fi
if [[ ${#failed[@]} -gt 0 ]]; then
  msg+="\nFailed or skipped:\n"
  for f in "${failed[@]}"; do msg+="$f\n"; done
fi

# Trim leading/trailing whitespace and notify
msg="$(echo -e "$msg" | sed '/^\s*$/d')"
dunstify -i " " "Sail" "$msg"
