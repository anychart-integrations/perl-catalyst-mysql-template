package PerlCatalystMysqlTemplate::View::HTML;
use Moose;
use namespace::autoclean;

extends 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

PerlCatalystMysqlTemplate::View::HTML - TT View for PerlCatalystMysqlTemplate

=head1 DESCRIPTION

TT View for PerlCatalystMysqlTemplate.

=head1 SEE ALSO

L<PerlCatalystMysqlTemplate>

=head1 AUTHOR

Igor,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
