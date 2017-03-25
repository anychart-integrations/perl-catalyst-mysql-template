[<img src="https://cdn.anychart.com/images/logo-transparent-segoe.png?2" width="234px" alt="AnyChart - Robust JavaScript/HTML5 Chart library for any project">](https://anychart.com)
# Perl Catalyst basic template
This example shows how to use Anychart library with the Perl programming language, Catalyst web framework and MySQL database.

## Running

To use this sample you must have Perl, Cpan and Catalyst installed, if not, please, visit [Catalyst installation guide](http://wiki.catalystframework.org/wiki/installingcatalyst);
MySQL installed and running, if not please check out [MySQL download page](https://dev.mysql.com/downloads/installer/) and follow [instructions](http://dev.mysql.com/doc/refman/5.7/en/installing.html).

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

Install app dependencies, you can use cpanfile or Makefile.PL.

To use cpanfile, assuming you have [cpanminus](http://search.cpan.org/~miyagawa/App-cpanminus-1.7042/lib/App/cpanminus.pm) installed on your system, run:
```
 cpanm --installdeps .
```

To use Makefile.PL run:

```
perl Makefile.PL
```
The command will show you your dependencies versions. This template is tested with dependencies listed below:
```
*** Checking for Perl dependencies...
[Core Features]
- Test::More                            ...loaded. (1.302062 >= 0.88)
- Catalyst::Runtime                     ...loaded. (5.90112 >= 5.90112)
- Catalyst::Plugin::ConfigLoader        ...loaded. (0.34)
- Catalyst::Plugin::Static::Simple      ...loaded. (0.33)
- Catalyst::Action::RenderView          ...loaded. (0.16)
- Catalyst::Helper::View::TT            ...loaded. (0.44)
- DBD::mysql                            ...loaded. (4.038)
- DBIx::Class::Schema::Loader           ...loaded. (0.07046)
- Catalyst::Helper::Model::DBIC::Schema ...loaded. (0.65)
- Catalyst::Plugin::StackTrace          ...loaded. (0.12)
- Moose                                 ...loaded. (2.1806)
- namespace::autoclean                  ...loaded. (0.28)
- Config::General                       ...loaded. (2.63)
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
                Root.pm                         # main controller
            Model/
                DB.pm                           # MySQL settings
            Schema/
                Result/
                    Fruit.pm                    # database model
            View/
                HTML.pm                         # template engine settings
            Schema.pm                           # database schema settings
        PerlCatalystMysqlTemplate.pm            # main project settings
    root/
        root/
            index.tt                            # HTML template
        static/
            css/
                style.css                       # CSS style
            images/
            favicon.ico
    script/                                     # Perl useful scripts
        perlcatalystmysqltemplate_cgi.pl
        perlcatalystmysqltemplate_create.pl
        perlcatalystmysqltemplate_fastcgi.pl
        perlcatalystmysqltemplate_server.pl
        perlcatalystmysqltemplate_test.pl
    t/                                          # folder for tests
    Changes
    database_backup.sql                         # MySQL database dump
    LICENSE
    Makefile.PL                                 # project makefile
	cpanfile									# settings for cpanm
    perlcatalystmysqltemplate.conf
    perlcatalystmysqltemplate.psgi
    README.md

```
More about Catalyst folder structure you can read [here](http://search.cpan.org/~hkclark/Catalyst-Manual-5.7021/lib/Catalyst/Manual/Tutorial/CatalystBasics.pod#CREATE_A_CATALYST_PROJECT).

## Technologies
Language - [Perl](https://www.perl.org/)<br />
Web framework - [Catalyst](http://www.catalystframework.org/)<br />
Template Engine - [Template Toolkit](http://template-toolkit.org/)<br />
Database - [MySQL](https://www.mysql.com/)<br />


## Further Learning
* [Documentation](https://docs.anychart.com)
* [JavaScript API Reference](https://api.anychart.com)
* [Code Playground](https://playground.anychart.com)
* [Technical Support](https://anychart.com/support)

## License
[© AnyChart.com - JavaScript charts](http://www.anychart.com). Released under the [Apache 2.0 License](https://github.com/anychart-integrations/perl-catalyst-mysql-template/blob/master/LICENSE).
