package com.twitter.android.av.monetization;

import android.content.Intent;
import com.twitter.model.av.n;
import com.twitter.model.av.p;
import com.twitter.util.ab;
import defpackage.apj;

/* compiled from: Twttr */
class f implements apj<n> {
    private f() {
    }

    public /* synthetic */ Object b(Intent intent) {
        return a(intent);
    }

    public n a(Intent intent) {
        if (intent == null) {
            return new p().c();
        }
        n nVar = (n) ab.a(intent, "media_monetization_metadata", n.a);
        return nVar == null ? new p().c() : nVar;
    }
}
