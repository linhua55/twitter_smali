package com.twitter.android.initialization;

import com.twitter.util.concurrent.n;
import defpackage.cfa;
import java.util.Collection;

/* compiled from: Twttr */
class e implements n<Collection<String>> {
    final /* synthetic */ d a;

    e(d dVar) {
        this.a = dVar;
    }

    public /* synthetic */ Object call() {
        return a();
    }

    public Collection<String> a() {
        return cfa.a(10, true);
    }
}
