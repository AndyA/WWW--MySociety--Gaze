use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'WWW::MySociety::Gaze',
    license           => 'perl',
    dist_author       => 'Andy Armstrong <andy@hexten.net>',
    dist_version_from => 'lib/WWW/MySociety/Gaze.pm',
    requires          => {
        'Test::More' => 0,
    },
    add_to_cleanup => ['WWW-MySociety-Gaze-*'],
);

$builder->create_build_script();
