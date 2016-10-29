package com.twitter.app.common.util;

import android.app.Activity;
import com.twitter.app.common.app.a;
import com.twitter.util.m;
import defpackage.cwj;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: Twttr */
public class f {
    private static f a;
    private final Set<h> b;
    private volatile int c;
    private volatile long d;
    private volatile long e;
    private volatile long f;
    private long g;
    private long h;
    private boolean i;
    private Boolean j;

    public static f a() {
        if (a != null) {
            return a;
        }
        if (cwj.b()) {
            return new f(null);
        }
        return a.a().e();
    }

    public f(c cVar) {
        this.b = new LinkedHashSet();
        this.j = null;
        if (cVar != null) {
            cVar.a(new g(this));
        }
    }

    public synchronized void a(h hVar) {
        this.b.add(hVar);
    }

    public synchronized boolean b(h hVar) {
        return this.b.remove(hVar);
    }

    public boolean b() {
        long b = m.b();
        return c() || b - this.d <= 100 || b - this.e <= 100 || b - this.f <= 100;
    }

    public boolean c() {
        if (!cwj.a() || this.j == null) {
            return this.c > 0 || this.i;
        } else {
            return this.j.booleanValue();
        }
    }

    public long d() {
        return this.h != 0 ? (this.g + m.b()) - this.h : this.g;
    }

    private void e() {
        this.d = m.b();
    }

    private void f() {
        this.e = m.b();
    }

    private void a(Activity activity) {
        int i = 0;
        if (this.c == 0) {
            this.c++;
            if (this.i) {
                this.i = false;
                return;
            }
            h[] hVarArr;
            this.h = m.b();
            synchronized (this) {
                hVarArr = (h[]) this.b.toArray(new h[this.b.size()]);
            }
            int length = hVarArr.length;
            while (i < length) {
                hVarArr[i].b(activity);
                i++;
            }
            return;
        }
        this.c++;
    }

    private void b(Activity activity) {
        this.c--;
        if (this.c != 0) {
            return;
        }
        if (activity.isChangingConfigurations()) {
            this.i = true;
            return;
        }
        synchronized (this) {
        }
        for (h a : (h[]) this.b.toArray(new h[this.b.size()])) {
            a.a(activity);
        }
        this.g += m.b() - this.h;
        this.h = 0;
    }
}
