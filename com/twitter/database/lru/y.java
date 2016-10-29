package com.twitter.database.lru;

import com.twitter.database.model.w;
import com.twitter.platform.PlatformContext;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.h;
import cvn;
import java.util.Map;

/* compiled from: Twttr */
public class y implements x {
    private final j a;
    private final t b;
    private final cvn c;
    private final Map<Integer, LruPolicy> d;

    public y(j jVar, t tVar, cvn cvn) {
        this.a = jVar;
        this.b = tVar;
        this.c = cvn;
        this.d = MutableMap.a();
        b();
    }

    public int a(String str) {
        h.c();
        return this.a.a(str);
    }

    public byte[] a(int i, String str, int i2) {
        h.c();
        return this.b.a(i, str, i2, c());
    }

    public byte[] a(int i, String str, int i2, byte[] bArr, long j) {
        h.c();
        w a = this.b.a();
        long c = c();
        try {
            byte[] a2 = a(i, str, i2);
            if (a2 != null) {
                this.b.a(i, str, i2, bArr, j, c);
            } else {
                this.b.b(i, str, i2, bArr, j, c);
                b(i);
            }
            a.a();
            return a2;
        } finally {
            a.close();
        }
    }

    public void a(int i) {
        h.c();
        w a = this.b.a();
        try {
            this.b.a(i);
            this.a.a(i);
            a.a();
        } finally {
            a.close();
        }
    }

    public void a(int i, LruPolicy lruPolicy) {
        this.d.put(Integer.valueOf(i), lruPolicy);
        b(i);
    }

    private void b(int i) {
        LruPolicy lruPolicy = (LruPolicy) this.d.get(Integer.valueOf(i));
        if (lruPolicy != null) {
            this.c.a(new z(this, lruPolicy, i)).a();
        }
    }

    private void b() {
        this.c.a(new aa(this)).a();
    }

    private static long c() {
        return PlatformContext.f().a().a();
    }
}
