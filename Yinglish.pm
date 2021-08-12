#!/usr/bin/env perl -w

use strict;
use warnings;
use Lingua::ZH::Jieba;
use utf8;
binmode STDOUT, "utf8";

package Yinglish;

my $jieba = Lingua::ZH::Jieba->new();

sub _word_convert {
    my $w = shift;
    my $t = shift;
    my $inrando = shift;

    my $rand = rand();

    if ($rand > $inrando) {
        return $w;
    }

    if ($w =~ m/^(,|\.|，|。)$/) {
        return "……";
    }

    if ($w =~ m/^(!|！)$/) {
        return "❤";
    }

    if (length $w > 1 && $rand > 0.5) {
        $w =~ m/^./;
        return $& . "……" . $w;
    }
    else {
        if ($t eq "n" && $rand < 0.5) {
            $w =~ s/./〇/g;
        }
        return "……" . $w;
    }
}

sub chs2yin {
    my $s = shift;
    my $inran = shift || 0.5;
    my $tags = $jieba->tag($s);
    my $res = "";
    for my $p (@$tags) {
        my $w = shift @$p;
        my $t = shift @$p;
        $res .= &_word_convert($w, $t, $inran);
    }
    return $res;
}

1;
