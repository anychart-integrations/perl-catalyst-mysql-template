package PerlCatalystMysqlTemplate::Controller::Root;
use Moose;
use namespace::autoclean;
use JSON;

BEGIN { extends 'Catalyst::Controller' }

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config(namespace => '');

=encoding utf-8

=head1 NAME

PerlCatalystMysqlTemplate::Controller::Root - Root Controller for PerlCatalystMysqlTemplate

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=head2 index

The root page (/)

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # get fruits data from database
    my @fruits = $c->model('DB::Fruit')->search(undef, {order_by => {-desc => 'value'}, rows => 5})->all;
    foreach my $f (@fruits)
    {
        $f = {name => $f->name, value => $f->value};
    }
    my $data = JSON->new->utf8->allow_blessed->convert_blessed->encode([@fruits]);

    # pass data to HTML template
    $c->stash(chartData => $data,
        title => "Perl Catalyst template",
        chartTitle => "Top 5 fruits"
    );
    $c->stash(template => 'root/index.tt');
}

=head2 default

Standard 404 error page

=cut

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Igor,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
