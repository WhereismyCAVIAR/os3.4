#!/usr/bin/perl

$|=0;
if (fork) {
    # parent
    print "Parent $$\n"; # $$--->プロセスIDが出力。
    # 子供が終わるのを待つ
    wait;
    print "Child end\n";
} else {
    # child
    print "Child $$\n";
    exec ("ls;sleep 5;ls;sleep 5;ls ../.."); # 標準入力で取ってきたものを実行する。実行した場合プロセスを閉じ、以下が実行されない。
    print "Child end 1234\n";
}

