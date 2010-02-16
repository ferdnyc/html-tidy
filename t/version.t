#!perl -Tw

use warnings;
use strict;
use Test::More;

BEGIN {
    plan tests => 3;
    use_ok( 'HTML::Tidy' );
}

my $version_string = HTML::Tidy->libtidy_version();
like( $version_string, qr/^\d\.\d{2,}$/, 'Valid version string' );

my $version_nr = HTML::Tidy->libtidy_version( {numeric =>1 } );
cmp_ok( $version_nr, '>=', '0.90', 'Version is greater than 0.90, which is the one I maintain' );

