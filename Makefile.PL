use strict;
use warnings;
use ExtUtils::MakeMaker;

eval 'use ExtUtils::MakeMaker::Coverage';

WriteMakefile(
  ( MM->can( 'signature_target' ) ? ( SIGN => 1 ) : () ),
  license( 'perl' ),
  NAME          => 'WWW::MySociety::Gaze',
  AUTHOR        => 'Andy Armstrong <andy@hexten.net>',
  VERSION_FROM  => 'lib/WWW/MySociety/Gaze.pm',
  ABSTRACT_FROM => 'lib/WWW/MySociety/Gaze.pm',
  PL_FILES      => {},
  PREREQ_PM     => {
    'Test::More'     => 0,
    'LWP::UserAgent' => 0,
    'HTML::Tiny'     => 0,
    'Text::CSV'      => 0,
  },
  dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
  clean => { FILES    => 'WWW-MySociety-Gaze-*' },
);

sub license {
  my $lic = shift;
  local $^W = 0;    # Silence warning about non-numeric version
  return
   unless $ExtUtils::MakeMaker::VERSION >= '6.31';
  return ( LICENSE => $lic );
}
