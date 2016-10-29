package com.twitter.android.moments.data;

import com.twitter.util.collection.n;
import cyw;
import defpackage.cll;
import java.util.Collection;
import java.util.List;
import rx.o;

/* compiled from: Twttr */
class bc implements cyw<Collection<String>, o<List<cll>>> {
    final /* synthetic */ ay a;

    bc(ay ayVar) {
        this.a = ayVar;
    }

    public o<List<cll>> a(Collection<String> collection) {
        return ay.c(this.a).a_(n.a(collection));
    }
}
