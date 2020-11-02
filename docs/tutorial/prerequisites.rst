Prerequisites
=============

First, we require some prerequisites before getting started with this tutorial. This tutorial assumes
that you have some understanding of python, and have it installed on your computer.

Requirements
------------

* `conda <https://docs.conda.io/en/latest/miniconda.html>`_. This is optional, but will make it easier to manage project requirements.
* python 3.6
* git
* a `TestPyPI <https://test.pypi.org/>`_ account. This is optional, but is required if you want upload a test package to TestPyPI.


Creating a conda environment
----------------------------

We use conda to manage requirements for different projects. You may be working on
multiple python projects that require different packages and versions. To manage this, we can
create different conda environments for each project. Although this step is
not necessary, it will help you manage your projects so they do not conflict.


Let's create a conda environment for our project:

.. code:: bash

	conda create -n PlotMAPQ python=3.6 pip
	source activate PlotMAPQ


Getting the code
----------------

Next, we will want to pull the code for this tutorial. This is a finished project
and includes all the code you need. You can use this repository as a reference for
future projects.

Clone the repository:

.. code:: bash

	git clone https://github.com/akmorrow13/CompBIO_Seminar_2020.git
	cd CompBIO_Seminar_2020

You now have everything you need. Let's get started!
