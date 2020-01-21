#!/usr/bin/env python
from distutils.core import setup

setup(name='massif_to_csv',
    version='0.1.0',
    py_modules=['massif_to_csv'],
    scripts=['massif-to-csv'],

    python_requires='>=3.6',
    install_requires=['msparser>=1.4'],

    description='Convert a Valgrind Massif output file to a CSV file',
    author='Millian Poquet',
    author_email='millian.poquet@inria.fr',
    url='https://github.com/mpoquet/massif_to_csv',
    license='MIT',
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
    ],
)
