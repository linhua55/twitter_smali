package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequest.RequestLevel;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: Twttr */
public class f implements bx {
    private final ImageRequest a;
    private final String b;
    private final bz c;
    private final Object d;
    private final RequestLevel e;
    @GuardedBy("this")
    private boolean f;
    @GuardedBy("this")
    private Priority g;
    @GuardedBy("this")
    private boolean h;
    @GuardedBy("this")
    private boolean i;
    @GuardedBy("this")
    private final List<by> j;

    public f(ImageRequest imageRequest, String str, bz bzVar, Object obj, RequestLevel requestLevel, boolean z, boolean z2, Priority priority) {
        this.a = imageRequest;
        this.b = str;
        this.c = bzVar;
        this.d = obj;
        this.e = requestLevel;
        this.f = z;
        this.g = priority;
        this.h = z2;
        this.i = false;
        this.j = new ArrayList();
    }

    public ImageRequest a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public bz c() {
        return this.c;
    }

    public Object d() {
        return this.d;
    }

    public RequestLevel e() {
        return this.e;
    }

    public synchronized boolean f() {
        return this.f;
    }

    public synchronized Priority g() {
        return this.g;
    }

    public synchronized boolean h() {
        return this.h;
    }

    public void a(by byVar) {
        Object obj = null;
        synchronized (this) {
            this.j.add(byVar);
            if (this.i) {
                obj = 1;
            }
        }
        if (obj != null) {
            byVar.a();
        }
    }

    public void i() {
        a(j());
    }

    @Nullable
    public synchronized List<by> a(boolean z) {
        List<by> list;
        if (z == this.f) {
            list = null;
        } else {
            this.f = z;
            list = new ArrayList(this.j);
        }
        return list;
    }

    @Nullable
    public synchronized List<by> a(Priority priority) {
        List<by> list;
        if (priority == this.g) {
            list = null;
        } else {
            this.g = priority;
            list = new ArrayList(this.j);
        }
        return list;
    }

    @Nullable
    public synchronized List<by> b(boolean z) {
        List<by> list;
        if (z == this.h) {
            list = null;
        } else {
            this.h = z;
            list = new ArrayList(this.j);
        }
        return list;
    }

    @Nullable
    public synchronized List<by> j() {
        List<by> list;
        if (this.i) {
            list = null;
        } else {
            this.i = true;
            list = new ArrayList(this.j);
        }
        return list;
    }

    public static void a(@Nullable List<by> list) {
        if (list != null) {
            for (by a : list) {
                a.a();
            }
        }
    }

    public static void b(@Nullable List<by> list) {
        if (list != null) {
            for (by b : list) {
                b.b();
            }
        }
    }

    public static void c(@Nullable List<by> list) {
        if (list != null) {
            for (by c : list) {
                c.c();
            }
        }
    }

    public static void d(@Nullable List<by> list) {
        if (list != null) {
            for (by d : list) {
                d.d();
            }
        }
    }
}
