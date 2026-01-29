function dot_install_tmux
  set tmux_version (get_tmux_version)
  set arch (uname -m)
  set os_sys (uname -s)
  set platform "$os_sys-$arch"
  set tmp_dir $HOME
  set bin_dir "$HOME/.local/bin"
  set repo_url "https://github.com/tmux/tmux-builds"
  set downloads_url "$repo_url/releases/download/v$tmux_version"
  set url "$downloads_url/tmux-$tmux_version-$platform.tar.gz"
  set filename "tmux-$tmux_version-$platform.tar.gz"

  echo "Downloading tmux v$tmux_version for $platform..."
  curl -L -o $tmp_dir/$filename $url
  if test $status -ne 0
    echo "Failed to download tmux from $url"
    return 1
  end

  echo "Extracting tmux..."
  tar -xzf $tmp_dir/$filename -C $tmp_dir
  rm -rf $tmp_dir/$filename
  if test $status -ne 0
    echo "Failed to extract $filename"
    return 1
  end

  echo "Installing tmux to $bin_dir..."
  mkdir -p $bin_dir
  mv $tmp_dir/tmux $bin_dir/
end