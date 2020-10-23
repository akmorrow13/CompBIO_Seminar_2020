Command Line Scripts
====================

We would like to add a command line tool that allows users to run PlotMAPQ from
the command line. This allows users to call our modules from a script, as well as python.
To do so, all we have to do is add a script that calls PlotMAPQ,
and then declare the script in our setup script.

1. First, make a file called ``bin/plot-mapq``. This file will call PlotMAPQ.
2. Next, modify the setup.py file to include your new script in the package:


.. code:: bash

	setup(
	...
	scripts = ['/bin/plot-mapq']
	...
	)

For more information on command line tools, see the
`python packaging documentation <https://python-packaging.readthedocs.io/en/latest/command-line-scripts.html>`__.


Now, we can run PlotMAPQ from the command line:

.. code:: bash

	>> plot-mapq
	usage: plot-mapq [options] alignment_bam sample_name out_directory
	plot-mapq: error: the following arguments are required: bamIn, sampleName, dirOut


We can also just print the version:

.. code:: bash

	>> plot-mapq -v
	0.0.1a0
