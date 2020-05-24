package Bencher::Scenario::ModuleListers::Startup;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark the startup overhead of Module::List and its variants',
    module_startup => 1,
    participants => [
        {module => 'Module::List'},
        {module => 'Module::List::Tiny'},
        {module => 'Module::List::Wildcard'},
        {module => 'PERLANCAR::Module::List'},
    ],
};

1;
# ABSTRACT:
