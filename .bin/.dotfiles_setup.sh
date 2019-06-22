#!/usr/bin/env bash

set -eo pipefail

brew bundle

# install notmuch-mutt dependencies
# see ~/.bin/notmuch-mutt
#
# set perl to use 'local::lib' when
# installing the modules required by notmuch-mutt 
export PERL_LOCAL_LIB_ROOT="$HOME/.perl5"
export PERL5LIB="$PERL_LOCAL_LIB_ROOT/lib/perl5"
export PERL_MB_OPT="--install_base \"$PERL_LOCAL_LIB_ROOT\""
export PERL_MM_OPT="INSTALL_BASE=$PERL_LOCAL_LIB_ROOT"
export PATH="$PERL_LOCAL_LIB_ROOT/bin:$PATH";
export PATH="$HOME/.bin:$PATH"

echo Install cpamn modules for notmuch-mutt
cpanm Digest::SHA\
  Mail::Box\
  Mail::Header\
  Mail::Box::Maildir\
  String::ShellQuote\
  Term::ReadLine::Gnu | sed 's/^/  /'
