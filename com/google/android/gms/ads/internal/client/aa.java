package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.reward.client.k;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.oi;

@oi
public class aa {
    private static final Object a;
    private static aa b;
    private final a c;
    private final s d;
    private final y e;
    private final f f;
    private final ep g;
    private final k h;

    static {
        a = new Object();
        a(new aa());
    }

    protected aa() {
        this.c = new a();
        this.d = new s();
        this.e = new y();
        this.f = new f();
        this.g = new ep();
        this.h = new k();
    }

    public static a a() {
        return e().c;
    }

    protected static void a(aa aaVar) {
        synchronized (a) {
            b = aaVar;
        }
    }

    public static s b() {
        return e().d;
    }

    public static y c() {
        return e().e;
    }

    public static ep d() {
        return e().g;
    }

    private static aa e() {
        aa aaVar;
        synchronized (a) {
            aaVar = b;
        }
        return aaVar;
    }
}
