package com.twitter.platform;

import android.content.Context;
import com.twitter.util.network.a;
import com.twitter.util.y;

/* compiled from: Twttr */
public class c extends PlatformContext {
    private final t a;
    private final q b;
    private final y<p> c;
    private final a d;
    private final j e;

    public c(Context context) {
        this(new g(context), m.a(), a.a(), new j(context));
    }

    public c() {
        this(new g(new f(null)), m.a(), a.a(), null);
    }

    private c(q qVar, y<p> yVar, a aVar, j jVar) {
        this.a = new e(null);
        this.b = qVar;
        this.c = yVar;
        this.d = aVar;
        this.e = jVar;
    }

    public t a() {
        return this.a;
    }

    public q b() {
        return this.b;
    }

    public y<p> c() {
        return this.c;
    }

    public com.twitter.util.network.c d() {
        return this.d;
    }

    public o e() {
        if (this.e != null) {
            return this.e;
        }
        throw new IllegalStateException("TempFolder is null in PlatformContext");
    }
}
