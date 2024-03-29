use strict;
use warnings;
use ExtUtils::MakeMaker;

# $Id: Makefile.PL 389 2008-06-26 14:57:22Z davidp $

my @license =
    do {
        my $version = $ExtUtils::MakeMaker::VERSION;
        $version =~ tr/_//d;
        $version} > 6.30
    ? qw(LICENSE perl)
    : ();

WriteMakefile(
    NAME                => 'WWW::Comic::Plugin::LeastICouldDo',
    AUTHOR              => 'David Precious <davidp@preshweb.co.uk>',
    VERSION_FROM        => 'lib/WWW/Comic/Plugin/LeastICouldDo.pm',
    ABSTRACT_FROM       => 'lib/WWW/Comic/Plugin/LeastICouldDo.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'WWW::Comic::Plugin' => 0,
        'XML::Simple' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'WWW-Comic-Plugin-LeastICouldDo-*' },
    
    # include the LICENSE param, as long as EU::MM is new enough to support it:
    ($ExtUtils::MakeMaker::VERSION >= 6.3002 ? (LICENSE => "perl") : () ),
);
