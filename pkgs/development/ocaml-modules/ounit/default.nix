{ stdenv, ocaml, findlib, ounit2 }:

stdenv.mkDerivation {
  pname = "ocaml${ocaml.version}-ounit";
  inherit (ounit2) version src meta;

  buildInputs = [ findlib ];
  propagatedBuildInputs = [ ounit2 ];

  dontBuild = true;

  createFindlibDestdir = true;

  installTargets = [ "install-ounit" "version='${ounit2.version}'" ];

}
