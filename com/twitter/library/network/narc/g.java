package com.twitter.library.network.narc;

import bbl;
import bbm;
import java.util.Map;

/* compiled from: Twttr */
public class g implements bbm {
    public void a(bbl bbl, Map<String, Object> map) {
        Throwable c = bbl.c();
        i.a(c.getClass().getName(), c.getMessage(), c);
    }

    public void b(bbl bbl, Map<String, Object> map) {
        a(bbl, map);
    }
}
