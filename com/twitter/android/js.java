package com.twitter.android;

import android.content.Context;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
class js extends z {
    final /* synthetic */ Context a;
    final /* synthetic */ jr b;

    js(jr jrVar, Context context) {
        this.b = jrVar;
        this.a = context;
    }

    public void b(x xVar) {
    }

    public void a(x xVar) {
        MediaActionBarFragment.a(((aa) xVar.l().b()).b(), true, this.a, xVar.isCancelled());
    }
}
