package com.twitter.database.lru;

import com.twitter.util.serialization.m;
import com.twitter.util.serialization.n;
import ctc;

/* compiled from: Twttr */
public class g<V, S extends n<V>> implements i<String, V> {
    private final x a;
    private final ab b;
    private final String c;
    private final S d;
    private final ctc<byte[], V> e;
    private final int f;
    private Integer g;

    public g(x xVar, ab abVar, String str, int i, S s) {
        this.e = new h(this);
        this.a = xVar;
        this.b = abVar;
        this.c = str;
        this.f = i;
        this.d = s;
    }

    public V a(String str) {
        return a(this.a.a(b(), str, this.f));
    }

    public V a(String str, V v, long j) {
        return a(this.a.a(b(), str, this.f, b(v), j));
    }

    public void a() {
        this.a.a(b());
    }

    private synchronized int b() {
        if (this.g == null) {
            this.g = Integer.valueOf(this.a.a(this.c));
            this.a.a(this.g.intValue(), this.b.a);
        }
        return this.g.intValue();
    }

    private V a(byte[] bArr) {
        return m.a(bArr, this.d);
    }

    private byte[] b(V v) {
        return m.a(v, this.d);
    }
}
