# $Id: POSIXShellRedirection.pm,v 1.2 2008/10/27 20:31:21 drhyde Exp $

package Devel::AssertOS::OSFeatures::POSIXShellRedirection;

use Devel::CheckOS;

use Devel::AssertOS qw(Unix Cygwin BeOS);

=head1 NAME

Devel::AssertOS::OSFeatures::POSIXShellRedirection - check whether
the OS we're running on can be expected to support POSIX shell
redirection.

=head1 SYNOPSIS

See L<Devel::CheckOS> and L<Devel::AssertOS>

=head1 COPYRIGHT and LICENCE

Copyright 2007 - 2008 David Cantrell

This software is free-as-in-speech software, and may be used, distributed, and modified under the terms of either the GNU General Public Licence version 2 or the Artistic Licence. It's up to you which one you use. The full text of the licences can be found in the files GPL2.txt and ARTISTIC.txt, respectively.

=cut

$VERSION = '1.2';

sub os_is { 1; }

sub expn {
join("\n",
"The operating system's normal shell(s) support POSIX-style redirection",
"such as:",
"  foo |  more    (piping from one command to another)",
"  foo >  file    (redirection of STDOUT to a file)",
"  foo 2> file    (redirection of STDERR to a file)",
"  foo <  file    (redirection of STDIN from a file)",
"and so on"
)
}

Devel::CheckOS::die_unsupported() unless(os_is());

1;
