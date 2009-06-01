use Module::Build;
my $build = Module::Build->new(
	module_name => 'TFL::Tube::Status',
	dist_version => '0.1',
        dist_author  => 'Dave Cross <dave@mag-sol.com>',
        dist_abstract => 'Fill me in soon',
	license => 'perl',
	requires => {
		perl		      => '5.6.0',
		Carp                  => 0,
		Moose                 => 0,
		LWP::UserAgent        => 0,
	},
	build_requires => {
		'Test::More'	      => 0,
	},
	build_recommends => {
		'Test::Pod'           => 0,
		'Test::Pod::Coverage' => 0,
	},
        create_makefile_pl => 'traditional'
);

$build->create_build_script;
