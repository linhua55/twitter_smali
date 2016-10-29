package com.twitter.database.lru;

import cys;
import java.util.AbstractMap.SimpleEntry;
import java.util.Map.Entry;
import java.util.concurrent.Callable;
import rx.subjects.e;
import rx.t;
import rx.w;

/* compiled from: Twttr */
public class a<V> implements ac<String, V> {
    private final i<String, V> a;
    private final t b;
    private final t c;
    private final e<Entry<String, V>> d;

    public a(i<String, V> iVar, t tVar, t tVar2) {
        this.a = iVar;
        this.b = tVar;
        this.c = tVar2;
        this.d = e.q();
    }

    public w<V> a(String str) {
        return a(new b(this, str));
    }

    public w<V> a(String str, V v, long j) {
        return a(new f(this, str, v, j)).b(a(str, v));
    }

    public w<Void> a() {
        return a(new d(this)).b(new c(this));
    }

    private <T> w<T> a(Callable<T> callable) {
        return a(w.a(callable));
    }

    private <T> w<T> a(w<T> wVar) {
        return wVar.b(this.b).a(this.c);
    }

    private cys<V> a(String str, V v) {
        return new e(this, v, str);
    }

    private void b(String str, V v) {
        this.d.b_(new SimpleEntry(str, v));
    }
}
