package com.twitter.android;

import com.twitter.util.concurrent.n;
import defpackage.cfa;
import java.util.Collection;

/* compiled from: Twttr */
class ij implements n<Collection<String>> {
    final /* synthetic */ LogViewerActivity a;

    ij(LogViewerActivity logViewerActivity) {
        this.a = logViewerActivity;
    }

    public /* synthetic */ Object call() {
        return a();
    }

    public Collection<String> a() {
        return cfa.a(false);
    }
}
