#!/usr/bin/fish

if test -e "$HOME/.aliases"
  source "$HOME/.aliases"
end

set -x OCAMLPARAM "_,bin-annot=1"
set -x OPAMKEEPBUILDDIR "1"

if test -e "$HOME/.opam/opam-init/init.fish"
  source "$HOME/.opam/opam-init/init.fish"
end

if test -d "$HOME/.plenv"
  set -gx fish_user_paths "$HOME/.plenv/bin" $fish_user_paths
  status --is-interactive; and . (plenv init -|psub)
end

if test -d "$HOME/.rbenv"
  set -gx fish_user_paths "$HOME/.rbenv/bin" $fish_user_paths
  status --is-interactive; and . (rbenv init -|psub)
end
