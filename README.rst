|ci-status|

massif_to_csv
=============
A python script/module that converts `Valgrind's Massif tool`_ traces to CSV_.

Usage
-----

``massif-to-csv <MASSIF-INPUT-TRACE-FILE> <CSV-OUTPUT-FILE>``

Installation
------------

.. list-table::
    :header-rows: 1

    * - package manager
      - command
    * - pip_
      - ``pip install massif_to_csv``
    * - Nix_
      - ``nix-env -f https://github.com/mpoquet/massif_to_csv/archive/master.tar.gz -iA massif_to_csv``

.. |ci-status| image:: https://img.shields.io/travis/mpoquet/massif_to_csv/master
    :alt: ci status
    :scale: 100%
    :target: https://travis-ci.org/mpoquet/massif_to_csv/

.. _Valgrind's Massif tool: https://valgrind.org/docs/manual/ms-manual.html
.. _CSV: https://en.wikipedia.org/wiki/Comma-separated_values
.. _pip: https://pip.pypa.io/en/stable/
.. _Nix: https://nixos.org/nix/
