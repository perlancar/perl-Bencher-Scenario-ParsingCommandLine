package Bencher::Scenario::ParsingCommandLine;

# DATE
# VERSION

use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark parsing command-line string',
    participants => [
        {fcall_template=>'Parse::CommandLine::parse_command_line(<cmdline>)', result_is_list=>1},
        {fcall_template=>'Complete::Bash::parse_cmdline(<cmdline>)'},
    ],
    datasets => [
        {name=>'empty' , args=>{cmdline=>q()}},
        {name=>'medium', args=>{cmdline=>q(one two "three four" 'five six seven' eight\\ nine --ten --eleven=twelve)}},
    ],
};

1;
# ABSTRACT:
