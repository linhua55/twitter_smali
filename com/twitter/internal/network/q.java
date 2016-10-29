package com.twitter.internal.network;

import com.twitter.platform.PlatformContext;
import com.twitter.platform.p;
import com.twitter.util.y;

/* compiled from: Twttr */
public class q extends y<v> {
    private static q a;
    private static final u b;
    private final u c;
    private boolean d;
    private boolean e;

    static {
        b = new r();
    }

    public static synchronized q a() {
        q qVar;
        synchronized (q.class) {
            if (a == null) {
                a = new q();
            }
            qVar = a;
        }
        return qVar;
    }

    protected q() {
        this(PlatformContext.f().b(), PlatformContext.f().c());
    }

    public q(com.twitter.platform.q qVar, y<p> yVar) {
        this(qVar, yVar, b);
    }

    public q(com.twitter.platform.q qVar, y<p> yVar, u uVar) {
        this.d = false;
        this.e = false;
        this.c = uVar;
        this.d = qVar.a("wifi_only_mode", false);
        qVar.a(new s(this));
        yVar.a(new t(this));
    }

    private void a(boolean z, boolean z2) {
        boolean b = b();
        this.d = z;
        this.e = z2;
        if (b() != b) {
            a(new v(b()));
        }
    }

    public boolean b() {
        return (this.c.a() && this.d && !this.e) ? false : true;
    }
}
