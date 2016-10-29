package com.twitter.android.moments.data;

import atf;
import com.twitter.util.object.g;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class d<A, T> implements g<atf<A, T>>, Closeable {
    private final Set<atf<A, T>> a;
    private final g<atf<A, T>> b;

    public /* synthetic */ Object b() {
        return a();
    }

    public d(g<atf<A, T>> gVar) {
        this.a = new HashSet();
        this.b = gVar;
    }

    public void close() throws IOException {
        for (atf close : this.a) {
            close.close();
        }
    }

    public atf<A, T> a() {
        atf<A, T> atf_A__T = (atf) this.b.b();
        this.a.add(atf_A__T);
        return atf_A__T;
    }
}
