function tmux_latest_version
  curl -s https://api.github.com/repos/tmux/tmux/releases/latest \
    | jq -r '.tag_name'
end
