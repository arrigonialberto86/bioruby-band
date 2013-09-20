# bio-band

[<img
src="https://travis-ci.org/arrigonialberto86/bioruby-band.png"/>](http://travi
s-ci.org/#!/arrigonialberto86/bioruby-band)

Data mining and machine learning algorithms for Ruby

## Installation

Install the  'jbundle' gem and 'bundle' for JRuby before trying to install the
'bio-band' gem. Maven is also required for .jars automatic download and
installation. On Ubuntu/Debian Maven should already be installed and on OSX
system you can get it from Brew

If you want to use 'bio-band' APIs without installing the gem you need to run
command 'rake -T' once before requiring the gem in your script (this is
necessary for jbundler to download the '.jar' files and subsequently set the
Java classpath). Otherwise use:

    gem install bio-band

## Usage

See the Wiki section for in depth information on how to use this gem

## Developers

To use the library 

    require 'bio-band'

The API doc is online. For more code examples see also the test files in the
source tree.

## Project home page

Information on the source tree, documentation, issues and how to contribute,
see

http://github.com/arrigonialberto86/bioruby-band

The BioRuby community is on IRC server: irc.freenode.org, channel: #bioruby.

## Cite

If you use this software, please cite one of

*   [BioRuby: bioinformatics software for the Ruby programming
    language](http://dx.doi.org/10.1093/bioinformatics/btq475)
*   [Biogem: an effective tool-based approach for scaling up open source
    software development in
    bioinformatics](http://dx.doi.org/10.1093/bioinformatics/bts080)


## Biogems.info

This Biogem is published at http://biogems.info/index.html#bio-band

## Copyright

Copyright (c) 2013 arrigonialberto86. See LICENSE.txt for further details.
