package com.twitter.library.media.manager;

import ark;
import aru;
import asa;

/* compiled from: Twttr */
public class o extends asa {
    public o(String str) {
        super("resource:fetcher:" + str, ark.m, null, null);
    }

    public o() {
        this("total_request_time");
    }

    public void f() {
        aru.b().a(this);
    }
}
