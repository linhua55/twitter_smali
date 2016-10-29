package com.twitter.android.metrics;

import android.content.Context;
import arj;
import arp;
import arq;
import aru;
import com.twitter.app.common.list.k;
import defpackage.asc;

/* compiled from: Twttr */
public class g extends asc {
    private final h c;

    public g(Context context, String str, arp arp, String str2, arq arq, boolean z, int i, k kVar) {
        super(context, str, arp, str2, arq, z, i);
        this.c = new h(this);
        kVar.a(this.c);
    }

    public static g b(String str, arp arp, aru aru, boolean z, int i, k kVar) {
        arj a = aru.a(a("TwitterListFragmentScrollFramerateMetric", str));
        if (a == null) {
            a = aru.d(new g(aru.f(), str, arp, a("TwitterListFragmentScrollFramerateMetric", str), aru, z, i, kVar));
        }
        return (g) a;
    }

    protected boolean aM_() {
        return this.c.a() > 1;
    }
}
