Microsoft Open Data Ruby Wrapper
================================

A Ruby wrapper for the Microsoft Open Data API.


Usage
-----

    require 'microsoft_open_data'
		MicrosoftOpenData.catalog()
		=> Returns hash of all data containers

		MicrosoftOpenData.catalog('dc')
		=> Returns hash all services in the District of Columbia container
		
		MicrosoftOpenData.query('dc', 'CrimeIncidents')
		=> Returns hash all Crime Incidentds from the DC dataset

Copyright
---------

Copyright (c) 2011 Code for America Laboratories.

See LICENSE for details.

[![Code for America Tracker](http://stats.codeforamerica.org/codeforamerica/microsoft_open_data_ruby.png)](http://stats.codeforamerica.org/projects/microsoft_open_data_ruby)