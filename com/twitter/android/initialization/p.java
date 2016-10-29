package com.twitter.android.initialization;

import ark;
import arp;
import aru;
import java.util.Map.Entry;

/* compiled from: Twttr */
class p implements Runnable {
    final /* synthetic */ o a;

    p(o oVar) {
        this.a = oVar;
    }

    public void run() {
        aru b = aru.b();
        arp arp = ark.m;
        for (Entry entry : this.a.b.entrySet()) {
            b.a(new ark((String) entry.getKey(), arp, ((Long) entry.getValue()).longValue()));
        }
    }
}
