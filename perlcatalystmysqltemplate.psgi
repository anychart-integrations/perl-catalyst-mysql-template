use strict;
use warnings;

use PerlCatalystMysqlTemplate;

my $app = PerlCatalystMysqlTemplate->apply_default_middlewares(PerlCatalystMysqlTemplate->psgi_app);
$app;

