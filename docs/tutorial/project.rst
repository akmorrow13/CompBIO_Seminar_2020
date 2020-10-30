Project Setup
=============

In this project, we want to build a package that allows users to plot MAPQ statistics
from an alignment file. A ``package`` is a collection of python files that contain functions,
constants, and class definitions. These python files are usually referred to as ``modules``.
Modules are files that contains definitions that can be imported into other modules.
A file's name is the module name with the suffix .py.

In our package, we have the following items:

- a collection of modules
- build and installation scripts
- scripts to run from the command line
- unit tests
- test data
- documentation

Below, we describe these items in detail.

Basic Directory Structure
-------------------------

Let's look at the structure of our project. Here, we have:

.. code:: bash

	PlotMAPQ
		- __init__.py
		- tests
		- functions.py
		- PlotMAPQ.py

In this example, ``PlotMAPQ`` is our package. Within this package, we have two modules:
``functions.py`` and ``PlotMAP``. Once we install our package, we will be able to import
these modules.

Note another file ``__init__.py``. The ``__init__.py`` file is required in package directories for python to treat directories
as packages. ``__init__.py`` files can be empty, but can also contain initialization code for the submodule it defines.
Here, we only have two ``__init__.py`` files, one in our package and one in our test directory. However, if your project
has multiple subdirectories, you would have more.

Setup.py
--------

The ``setup.py`` file is the script used for building and installing the package.
This file uses `setuptools <https://setuptools.readthedocs.io/en/latest/>`_, a library for facilitating the packaging of python projects.
``setup.py`` defines the package version, dependencies, metadata, and other build information. Let's take a look at a part of our setup file:

.. code:: python

	import setuptools

	...

	setuptools.setup(
	    name="MAPQTools_myname",                                    # name of project
	    install_requires=REQUIRED_PACKAGES,                         # all requirements used by this package
	    version=this_version,                                       # project version, read from version.py
	    author="Author name",                       	            # Author, shown on PyPI
	    scripts = ['bin/plot-mapq'],                                # command line scripts installed
	    author_email="email@email.edu",			                    # Author email
	    description="Plots MAPQ distributions from BAM files",      # Short description of project
	    long_description=long_description,                          # Long description, shown on PyPI
	    long_description_content_type="text/markdown",              # Content type. Here, we used a markdown file.
	    url="https://github.com/akmorrow13/CompBIO_Seminar_2020",   # github path
	    packages=setuptools.find_packages(),                        # automatically finds packages in the current directory. You can also explictly list them.
	    classifiers=[                                               # Classifiers give pip metadata about your project. See https://pypi.org/classifiers/ for a list of available classifiers.
	        "Programming Language :: Python :: 3",
	        "License :: OSI Approved :: Apache Software License",
	        "Operating System :: OS Independent",
	    ],
	    python_requires='>=3.6',                                    # python version requirement
	)

Note that we have also defined package requirements and a long description for PyPI
in ``setup.py``.

Now, we will use our setup to build a distribution. The distribution consists of a tar archive
of all the files needed to build and install the package. 

.. code:: bash
	
	python setup.py sdist

This will build a distribution under ``dist/`` which can be uploaded to PyPI. For now, we want
to play around with our project in the development mode, so we will install our project. In your project
directory, install MAPQTools in editable mode:

.. code:: bash	
	
	pip install -e .

This will install our project in "editable" mode, meaning the package will be updated as
we make modifications to our files.

Now that we have installed our package in editable mode, we can access the package
from python:

.. code:: bash	
	
	python
	>>> import PlotMAPQ

Scripts
-------

Note that we also include the ``scripts`` directive in ``setup.py``. This specifies a list of scripts that
setuptools installs to be accessible by the command line. To add
this functionality, we create a ``bin`` directory that contains scripts the user can run. 
We discuss this more in :ref:`Command Line Scripts`.


Unit tests
----------

All good projects have unit tests. Luckily, there are a ton of great resources to add unit tests and
run them regularily. We have added unit tests under ``PlotMAPQ/test``. This directory contains unit tests
and data required to run the unit tests. We discuss this in more detail in :ref:`Unit tests and Continuous Integration`.

Documentation
-------------

Under the directory ``docs``, we have a bunch of files that create the documentation you are reading right now!
We will discuss this in detail later in :ref:`Project Documentation`.

Other Important Files
---------------------

In addition to the files mentioned, we have some other files that are important to a project:

1. ``README.md``: the README gives information for users on github, and is also used to provide information about your package on PyPI. In this example, we read the README.md file in setup.py to provide a long description for our package. Our read me is
a markdown (md) file.

2. ``LICENSE``: A license tells users of your package the terms under which they can use it. `choosealicense <https://choosealicense.com/>`_ provides information for picking out a license. In this tutorial, we use the Apache Foundation license, as it provides no restrictions for users.

3. ``Makefile``: A Makefile is completely optional, but makes it easier to build and develop projects. Here, we have added a makefile that contains objectives that allow developers to quickly run tests, develop, and push to PyPI. 


Next Steps
----------

For more information on package python projects, see `python-packaging-tutorial <https://python-packaging-tutorial.readthedocs.io/en/latest/setup_py.html>`_. Next, we will take a look at our command line script.
