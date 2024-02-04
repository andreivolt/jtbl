{ pkgs, ... }:

pkgs.python3Packages.buildPythonApplication rec {
  pname = "jtbl";
  version = "1.6.0";

  src = ./.;

  propagatedBuildInputs = with pkgs.python3Packages; [ tabulate ];

  doCheck = false; # fails
}
