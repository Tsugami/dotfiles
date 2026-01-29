
function get_tmux_version
  set fallback_version "3.6a"
  
  tmux_latest_version &| echo $fallback_version
end 