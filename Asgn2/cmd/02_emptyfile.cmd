#!/bin/csh -f

#
# Run the given command against the set of arguments given below
#
# config stuff
if ( $#argv != 2 ) then
  echo "usage: $0 <cmd> <datadir>"
  exit -1
endif

set cmd     = $argv[1]
set datadir = $argv[2]

# the arguments---only change these 
#-----------------------------------------------------------------------
set timeout = 120
set args    = ( $datadir/empty )
#-----------------------------------------------------------------------

# The run
timelimit $timeout $cmd $args

# exit with the status left behind by cmd...
exit $status
