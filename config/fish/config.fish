#!/usr/bin/fish

if test -e "$HOME/.aliases"
  source "$HOME/.aliases"
end

set -x OCAMLPARAM "_,bin-annot=1"
set -x OPAMKEEPBUILDDIR "1"

if test -e "$HOME/.opam/opam-init/init.fish"
  source "$HOME/.opam/opam-init/init.fish"
end
