package Bencher::Scenario::PERLANCARModuleList::Startup;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark the startup overhead of PERLANCAR::Module::List',
    module_startup => 1,
    participants => [
        {
            module => 'PERLANCAR::Module::List',
        },
        {
            module => 'Module::List',
        },
    ],
};

1;
# ABSTRACT:
