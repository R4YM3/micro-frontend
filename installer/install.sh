function print_main_menu {
  echo "Select"
  echo "  1) Install"
  echo "  2) Uninstall"

  read n
  case $n in
    1)
      install;;
    2)
      uninstall;;
    *)
      echo "invalid option $REPLY"
      print_main_menu;;
  esac
}

function install {
  cp ./aliases.sh ~/.config/aliases/micro-frontends.sh
  cp ./tmuxinator.yml ~/.config/tmuxinator/micro-frontends.yml
}

function uninstall {
  rm -rf ~/.config/aliases/micro-frontends.sh  
  rm -rf ~/.config/tmuxinator/micro-frontends.yml
}

print_main_menu 
