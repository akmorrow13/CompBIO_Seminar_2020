Installing MAPQTools
====================

Requirements
------------

* `conda <https://docs.conda.io/en/latest/miniconda.html>`__
* python 3.6

Installation from Pip
---------------------

1. Create and activate a pytion 3.6 conda venv:

.. code:: bash

	conda create --name MAPQTools python=3.6 pip
	source activate MAPQTools

2. Install MAPQTools from Pypi:

.. code:: bash

	pip install MAPQTools

Installation from Source
------------------------

1. Create and activate a pytion 3.7 conda venv:

.. code:: bash

	conda create --name MAPQTools python=3.6 pip
	source activate MAPQTools


2. Get Epitome code:

.. code:: bash

	git clone https://github.com/akmorrow13/CompBIO_Seminar_2020.git
	cd CompBIO_Seminar_2020


3. Install MAPTools and its requirements

.. code:: bash

	pip install -e .
