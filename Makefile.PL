use strict;

use DBI;
use DBI::DBD;
use ExtUtils::MakeMaker;

my %PREREQ_PM = (
    'DBI'               => 1.39,
    'HTML::Entities'    => 0,
    'Salesforce'        => 0.55,
    'Symbol'            => 0,
    'Test::More'        => 0,
    'URI::Escape'       => 0,
);

my %clean = (
    FILES => '$(DISTVNAME).tar$(SUFFIX) *.xsi',
);

WriteMakefile(
    NAME        => "DBD::Salesforce",
    VERSION     => "0.03",
    PREREQ_PM   => \%PREREQ_PM,
    clean       => \%clean,
);

sub MY::postamble {
    return DBI::DBD::dbd_postamble(@_);
}
