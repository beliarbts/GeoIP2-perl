package GeoIP2::Role::HasLocales;

use strict;
use warnings;

use GeoIP2::Types qw( LocalesArrayRef );
use Sub::Quote qw( quote_sub );

use Moo::Role;

has locales => (
    is      => 'ro',
    isa     => LocalesArrayRef,
    default => quote_sub(q{ ['en'] }),
);

1;