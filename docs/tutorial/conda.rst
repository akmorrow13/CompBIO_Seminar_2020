Adding your Package to Bioconda
===============================


If PyPI can package python projects, then conda can package almost anything.
Conda is great for packaging complicated projects. Let's save you have some java code,
which connects to python. Additionally, you could have very complicated dependencies that
are hard to manage with PyPI. We do biology, so we often use `bioconda <https://bioconda.github.io/index.html>`_, which is a channel
for the conda package manager that specializes in bioinformatics. You can browse available
packages at the `bioconda package index <https://bioconda.github.io/conda-package_index.html>`_. 

An additional benefit of using bioconda is that it automatically builds Docker Biocontainers 
that are updated everytime you update the conda recipe. 


Creating a conda recipe requires you to create activation scripts and submit a pull request to the `bioconda recipes <https://github.com/bioconda/bioconda-recipes/tree/master/recipes/>`_. These scripts specify how to build your project and which dependencies are required.

Let's take a look at pyranges, a python package that is similar to bedtools. 
Go to the `pyranges bioconda recipe <https://github.com/bioconda/bioconda-recipes/blob/master/recipes/pyranges>`_.
You will see a ``meta.yaml`` file. This file contains information about the package name and version, and where 
to download source code from. In this case, we are downloading the ``tar.gz`` distribution from PyPI. This file
also contains information of other conda dependencies required for this conda recipe. 

Once you push your conda recipe to bioconda, users will then be able to install your package with conda:

.. code:: bash

	conda install pyranges

Additionally, your package will be available in `biocontainers <https://quay.io/repository/biocontainers/pyranges>`_ to be used with docker.

For more information about bioconda, see `Contributing to Bioconda <https://bioconda.github.io/contributor/index.html>`_.

