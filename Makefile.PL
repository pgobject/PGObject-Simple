use 5.010;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'PGObject::Simple',
    AUTHOR              => q{Chris Travers <chris.travers@gmail.com>},
    VERSION_FROM        => 'lib/PGObject/Simple.pm',
    ABSTRACT_FROM       => 'lib/PGObject/Simple.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'bsd')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Carp::Clan' => '0',
        'Log::Any'   => '0',
        'PGObject'   => '1.403.2',
    },
    TEST_REQUIRES => {
        'Test::More' => 0,
        'Data::Dumper' => 0,
    },
    META_MERGE => {
        'meta-spec' => { version => 2 },
         resources => {
             repository => {
                 type => 'git',
                 url  => 'https://github.com/ledgersmb/PGObject-Simple.git',
                 web  => 'https://github.com/ledgersmb/PGObject-Simple',
             },
         },
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'PGObject-Simple-*' },
);
