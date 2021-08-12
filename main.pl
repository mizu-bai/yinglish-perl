#!/usr/bin/env perl -w

use strict;
use lib ".";
use warnings;
use utf8;
binmode STDOUT, "utf8";

use Yinglish;

my $s = "大家好，我是莉沫酱，欢迎来到我的个人演唱会。因为左边的那个人去写小说了，所以我来介绍一下这里都有什么。";

print Yinglish::chs2yin($s) . "\n";
