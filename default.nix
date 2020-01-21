{
  pkgs ? import (
    fetchTarball "https://github.com/NixOS/nixpkgs/archive/19.09.tar.gz") {},
}:

let
  pythonPackages = pkgs.python37Packages;
  python = pkgs.python37;

  self = rec {
    msparser = pythonPackages.buildPythonPackage rec {
      pname = "msparser";
      version = "1.4";
      buildInputs = [
        pythonPackages.pytest
      ];
      src = builtins.fetchurl {
        url = "https://files.pythonhosted.org/packages/e0/68/aece1c5e75b49d95f304d2df029ae69583ef59a55694ec683e2452d70637/msparser-1.4.tar.gz";
        sha256 = "1199d27bdc492647d2d17d7776e49176f3ec3d2d959d4cfc8b2ce9257cefc16f";
      };
    };

    dev_shell = pkgs.mkShell {
      name = "dev-shell";
      buildInputs = [
        python
        pythonPackages.ipython
        pythonPackages.virtualenv
        pythonPackages.pylint
        msparser
      ];
    };

    massif_to_csv = pythonPackages.buildPythonPackage rec {
      pname = "massif_to_csv";
      version = "local";
      propagatedBuildInputs = [msparser];
      src = pkgs.lib.sourceByRegex ./. [
        "massif_to_csv.py"
        "massif-to-csv"
        "setup.py"
      ];
    };

    installed_shell = pkgs.mkShell {
      name="shell-with-massif-to-csv";
      buildInputs=[massif_to_csv];
    };
  };
in
  self
