FROM ocaml/opam:ubuntu-20.04-ocaml-4.14
RUN opam install . --deps-only
RUN eval $(opam env)
RUN opam exec -- dune build
CMD ["opam", "exec", "--", "dune", "exec", "_build/default/bin/main.exe"]
