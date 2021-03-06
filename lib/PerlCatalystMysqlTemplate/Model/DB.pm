package PerlCatalystMysqlTemplate::Model::DB;

use strict;
use base 'Catalyst::Model::DBIC::Schema';

__PACKAGE__->config(
    schema_class => 'PerlCatalystMysqlTemplate::Schema',
    
    connect_info => {
        dsn => 'dbi:mysql:anychart_db',
        user => 'anychart_user',
        password => 'anychart_pass',
        AutoCommit => q{1},
    }
);

=head1 NAME

PerlCatalystMysqlTemplate::Model::DB - Catalyst DBIC Schema Model

=head1 SYNOPSIS

See L<PerlCatalystMysqlTemplate>

=head1 DESCRIPTION

L<Catalyst::Model::DBIC::Schema> Model using schema L<PerlCatalystMysqlTemplate::Schema>

=head1 GENERATED BY

Catalyst::Helper::Model::DBIC::Schema - 0.65

=head1 AUTHOR

Igor

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
