# vim: set ts=2 sts=2 sw=2 expandtab smarttab:
#
# This file is part of Dist-Zilla-Role-Stash-Plugins
#
# This software is copyright (c) 2010 by Randy Stauner.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
package Test::Plugin;
# ABSTRACT: Test Dist::Zilla::Role::Stash::Plugins

use strict;
use warnings;
use Moose;
with 'Dist::Zilla::Role::Plugin';

sub mvp_multivalue_args { qw(arr) }

has 'arr' => (
  is      => 'rw',
  isa     => 'ArrayRef',
  default => sub { [] },
);

has 'strung' => (
  is      => 'rw',
  isa     => 'Str',
  default => '',
);

has 'not' => (
  is      => 'ro',
  isa     => 'Str',
  default => 'not',
);

no Moose;
1;
