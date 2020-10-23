Package Basics
==============

First, we require some prerequisites in order to get started. This tutorial assumes
that you have some understanding of python, and have it installed on your computer.

Requirements
------------

* `conda <https://docs.conda.io/en/latest/miniconda.html>`__
* python 3.6
* git

Conda is not required for this tutorial, but will make it easier to manage your project dependencies.

Creating a conda virtual environment
------------------------------------

We use conda to manage requirements for different projects. You may be working on
multiple python projects that require different modules. To manage this, we can
create different conda virtual environments for each project. Although this step is
not necessary, it will help you manage your projects so they do not conflict.


Let's create a conda environment:

.. code:: bash

	conda create -n PlotMAPQ python=3.6 pip
	source activate PlotMAPQ


Getting the code
----------------

Next, we will want to pull the code for this tutorial. This is a finished project
and includes all the code needed. You may use this repository as a reference for
future projects.

Clone the repository:

.. code:: bash

	git clone https://github.com/akmorrow13/CompBIO_Seminar_2020.git
	cd CompBIO_Seminar_2020

You are all set. Let's get started!
