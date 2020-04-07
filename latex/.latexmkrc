#!/usr/bin/env perl

$latex            = 'uplatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
$out_dir          = '/work/';
$aux_dir          = '/tmp/';
$bibtex           = 'upbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'upmendex %O -o %D %S';
$max_repeat       = 5;
$pdf_mode         = 3; # generates pdf via dvipdfmx

# Prevent latexmk from removing PDF after typeset.
# This enables Skim to chase the update in PDF automatically.
$pvc_view_file_via_temporary = 0;

$pre_viewer       = 'none';
