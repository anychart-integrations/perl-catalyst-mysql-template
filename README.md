[<img src="https://cdn.anychart.com/images/logo-transparent-segoe.png?2" width="234px" alt="AnyChart - Robust JavaScript/HTML5 Chart library for any project">](https://anychart.com)
Perl Catalyst basic template
=========================

This example shows how to use Anychart library with the Python programming language, Django web framework and MySQL database.

## Running

To use this sample you must have Perl, Cpan and Catalyst installed (if not please visit [quick install guide](http://www.catalystframework.org/),
MySQL installed and running (if not please check out [MySQL download page](https://dev.mysql.com/downloads/installer/) and follow [instructions](http://dev.mysql.com/doc/refman/5.7/en/installing.html))

To check your installations, run the following command in the command line:
```
$ perl -v
This is perl 5, version 20, subversion 1 (v5.20.1) built for x86_64-linux... # sample output

$ perl -MCatalyst::Runtime -e 'print Catalyst::Runtime->VERSION'
5.90112 # sample output

$ mysql --version
mysql  Ver 14.14 Distrib 5.5.52, for debian-linux-gnu (x86_64) using readline 6. # sample output
```

To start this example run commands listed below.

Clone the repository from github.com:
```
$ git clone git@github.com:anychart-integrations/perl-catalyst-mysql-template.git
```

Navigate to the repository folder:
```
$ cd perl-catalyst-mysql-template
```
Set up MySQL database, use -u -p flags to provide username and password:
```
$  mysql < database_backup.sql
```

Install app dependencies:
```
perl Makefile.PL
```

Run example:
```
$ script/perlcatalystmysqltemplate_server.pl -r
```

Open browser at http://localhost:3000/

## Workspace
Your workspace should look like:
```
perl-catalyst-mysql-template/
    lib/
        PerlCatalystMysqlTemplate/
            Controller/
                Root.pm
            Model/
                DB.pm
            Schema/
                Result/
                    Fruit.pm
            View/
                HTML.pm
            Schema.pm
        PerlCatalystMysqlTemplate.pm
    root/
        root/
            index.tt
        static/
            css/
                style.css
            images/
            favicon.ico
    script/
        perlcatalystmysqltemplate_cgi.pl
        perlcatalystmysqltemplate_create.pl
        perlcatalystmysqltemplate_fastcgi.pl
        perlcatalystmysqltemplate_server.pl
        perlcatalystmysqltemplate_test.pl
    t/
    Changes
    database_backup.sql         # MySQL database dump
    LICENSE
    Makefile.PL
    perlcatalystmysqltemplate.conf
    perlcatalystmysqltemplate.psgi
    README.md

```
More about Catalyst folder structure you can read [here](http://search.cpan.org/~hkclark/Catalyst-Manual-5.7021/lib/Catalyst/Manual/Tutorial/CatalystBasics.pod#CREATE_A_CATALYST_PROJECT).

## Technologies
Language - [Perl](https://www.perl.org/)<br />
Web framework - [Catalyst](http://www.catalystframework.org/)<br />
Template Engine - [http://template-toolkit.org/](http://template-toolkit.org/)<br />
Database - [MySQL](https://www.mysql.com/)<br />


## Further Learning
* [Documentation](https://docs.anychart.com)
* [JavaScript API Reference](https://api.anychart.com)
* [Code Playground](https://playground.anychart.com)
* [Technical Support](https://anychart.com/support)

## License
[© AnyChart.com - JavaScript charts](http://www.anychart.com). Released under the [Apache 2.0 License](https://github.com/anychart-integrations/perl-catalyst-mysql-template/blob/master/LICENSE).
