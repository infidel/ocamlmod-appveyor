@echo off
if not exist opam (
    git clone https://github.com/ocaml/opam.git
    %CYG_ROOT%/bin/bash -lc "cd \"$OLDPWD/opam\" && env DJDIR=workaround ./configure && make lib-ext && make && make install"
)
%CYG_ROOT%/bin/bash -lc "cd \"$OLDPWD/opam\" && env DJDIR=workaround make install"
