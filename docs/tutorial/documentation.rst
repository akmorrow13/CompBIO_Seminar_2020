Project Documentation
=====================

Every good project has even better documentation! Luckily, it is now very easy to
publish documentation for python projects. You can make an account at `readthedocs <https://readthedocs.org/>`_
and link a project in your Github to readthedocs.

To publish our documentation, we use `Sphinx <https://www.sphinx-doc.org/en/master/>`_ to generate python documentation.
Sphinx automatically builds documentation and can also add automatic API documentation.

We have provided some documentation in the ``docs/`` directory. This directory contains
reStructuredText (rst) files that contain documentation we would like the public to see. Additionally,
there are some other files:

- ``conf.py``: configuration file that is required by Sphinx. `Documentation for conf.py can be found here <https://www.sphinx-doc.org/en/master/usage/configuration.html>`_.
- ``Makefile``: This is an optional file that makes it easy to build and view your docs locally before pushing them to readthedocs.
- ``requirements.txt``: This file contains python requirements needed to build docs locally.

Building documentation locally
------------------------------

First, install requirements:

.. code:: bash

	cd docs
	pip install -r requirements.txt


Next, you can generate the documentation to view locally:

.. code:: bash

	make html


You can view the documentation locally by opening ``docs/_build/index.html`` in your favorite web browser.

Autogenerating API Documentation
--------------------------------

Navigate to ``_build/html/`` and open ``index.html`` in your web browser to view docs locally.
Here, you will see the documentation that looks just like these docs. Additionally, you will see `API Documentation <file:///Users/akmorrow/yosef/CreatePythonProject/docs/_build/html/api.html>`_.
We use Sphinx's `autosummary feature <https://www.sphinx-doc.org/en/master/usage/extensions/autosummary.html>`_ to
automatically generate documentation for our package. This also requires respective file headers in our package files
(`functions.py <https://github.com/akmorrow13/CompBIO_Seminar_2020/blob/master/PlotMAPQ/functions.py#L2>`_, `__init__.py <https://github.com/akmorrow13/CompBIO_Seminar_2020/blob/master/PlotMAPQ/__init__.py#L2>`_, and `PlotMAPQ.py <https://github.com/akmorrow13/CompBIO_Seminar_2020/blob/master/PlotMAPQ/PlotMAPQ.py#L2>`_) so autosummary can find and generate the API documentation for the designated functions.

Adding documentation to readthedocs
-----------------------------------

Finally, we want to publish our documentation so it is visible to anyone who wants to use our tool.

1. Navigate to `readthedocs <https://readthedocs.org/>`_. If you do not have an account, create one. You will have to link your Github account with your readthedocs account to access your github repositories.
2. Click ``Import a Project``
3. Find the project you would like to import. Readthedocs will automatically pull docs from your ``docs`` directory.

You can view our documentation `at readthedocs <https://compbio-seminar-2020.readthedocs.io/en/latest/>`_.
