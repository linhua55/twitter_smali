package com.twitter.android.moments.ui;

import cni;
import cys;

/* compiled from: Twttr */
class c implements cys<Boolean> {
    final /* synthetic */ long a;
    final /* synthetic */ cni b;
    final /* synthetic */ b c;

    c(b bVar, long j, cni cni) {
        this.c = bVar;
        this.a = j;
        this.b = cni;
    }

    public /* synthetic */ void call(Object obj) {
        a((Boolean) obj);
    }

    public void a(Boolean bool) {
        if (bool.booleanValue()) {
            b.b(this.c).a(new d(this)).a();
            b.c(this.c).a(this.a, this.b).a();
        }
    }
}
