package Bencher::Scenario::PERLANCARModuleList::ReturnPathOption;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark the benefit of return_path option',

    description => <<'_',

When we want to get the paths of all installed modules, PERLANCAR::Module::List
can do this in one step using the `return_path` option.

With Module::List, we need to get the paths in an extra step.

_
    participants => [
        {
            module => 'PERLANCAR::Module::List',
            code_template => q!
                PERLANCAR::Module::List::list_modules(<prefix>, {list_modules=>1, recurse=>1, return_path=>1});
            !,
        },
        {
            module => 'Module::List',
            code_template => q!
                require Module::Path;
                my $mods = Module::List::list_modules(<prefix>, {list_modules=>1, recurse=>1});
                for my $mod (keys %$mods) {
                    $mods->{$mod} = Module::Path::module_path($mod);
                }
                $mods;
            !,
        },
    ],

    datasets => [
        {name=>"Module", args=>{prefix=>"Module::"}},
        {name=>"all", args=>{prefix=>""}, include_by_default=>0},
    ],
};

1;
# ABSTRACT:
