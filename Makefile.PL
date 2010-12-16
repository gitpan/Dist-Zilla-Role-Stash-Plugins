
use strict;
use warnings;

BEGIN { require 5.006; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'A Stash that stores arguments for plugins',
  'AUTHOR' => 'Randy Stauner <rwstauner@cpan.org>',
  'BUILD_REQUIRES' => {
    'Dist::Zilla::Role::Plugin' => '0',
    'Dist::Zilla::Tester' => '0',
    'File::Find' => '0',
    'File::Temp' => '0',
    'Moose' => '0',
    'Test::MockObject' => '0',
    'Test::MockObject::Extends' => '0',
    'Test::More' => '0.96'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Dist-Zilla-Role-Stash-Plugins',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Dist::Zilla::Role::Stash::Plugins',
  'PREREQ_PM' => {
    'Dist::Zilla::Role::DynamicConfig' => '0',
    'Dist::Zilla::Role::Stash' => '0',
    'Moose::Role' => '0'
  },
  'VERSION' => '1.002005',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



