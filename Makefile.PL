# -*- perl -*-

use ExtUtils::MakeMaker;

WriteMakefile
    ( 'NAME'         => 'ExtUtils::PerlPP',
      'VERSION_FROM' => 'PerlPP.pm',
      'dist'         => { 'SUFFIX'       => ".gz",
			  'DIST_DEFAULT' => 'all tardist',
			  'COMPRESS'     => "gzip -9f" },
     );

package MY;

sub postamble {
    '
all :: README

README: PerlPP.pm
	perldoc -t PerlPP.pm >README
';
}
