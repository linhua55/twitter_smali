package com.facebook.drawee.view;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import ax;
import bx;
import cb;
import com.facebook.drawee.components.DraweeEventTracker;
import com.facebook.drawee.components.DraweeEventTracker.Event;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.drawable.s;
import defpackage.bt;
import defpackage.dk;
import dl;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class c<DH extends dl> implements s {
    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private DH e;
    private dk f;
    private final ax g;
    private final DraweeEventTracker h;

    public static <DH extends dl> c<DH> a(@Nullable DH dh, Context context) {
        c<DH> cVar = new c(dh);
        cVar.a(context);
        return cVar;
    }

    public void a(Context context) {
    }

    public c(@Nullable DH dh) {
        this.a = false;
        this.b = false;
        this.c = true;
        this.d = true;
        this.f = null;
        this.h = new DraweeEventTracker();
        if (dh != null) {
            a((dl) dh);
        }
        this.g = new d(this);
    }

    public void b() {
        this.h.a(Event.o);
        this.b = true;
        i();
    }

    public void c() {
        this.h.a(Event.p);
        this.b = false;
        i();
    }

    public boolean a(MotionEvent motionEvent) {
        if (this.f == null) {
            return false;
        }
        return this.f.a(motionEvent);
    }

    public void a(boolean z) {
        if (this.c != z) {
            this.h.a(z ? Event.q : Event.r);
            this.c = z;
            i();
        }
    }

    public void a() {
        if (!this.a) {
            cb.d(DraweeEventTracker.class, "%x: Draw requested for a non-attached controller %x. %s", new Object[]{Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f)), toString()});
            this.b = true;
            this.c = true;
            this.d = true;
            i();
        }
    }

    private void a(@Nullable s sVar) {
        Drawable f = f();
        if (f instanceof r) {
            ((r) f).a(sVar);
        }
    }

    public void a(@Nullable dk dkVar) {
        boolean z = this.a;
        if (z) {
            h();
        }
        if (this.f != null) {
            this.h.a(Event.d);
            this.f.a(null);
        }
        this.f = dkVar;
        if (this.f != null) {
            this.h.a(Event.c);
            this.f.a(this.e);
        } else {
            this.h.a(Event.e);
        }
        if (z) {
            g();
        }
    }

    @Nullable
    public dk d() {
        return this.f;
    }

    public void a(DH dh) {
        this.h.a(Event.a);
        a(null);
        this.e = (dl) bx.a(dh);
        a(this.e.a().isVisible());
        a((s) this);
        if (this.f != null) {
            this.f.a((dl) dh);
        }
    }

    public DH e() {
        return (dl) bx.a(this.e);
    }

    public Drawable f() {
        return this.e == null ? null : this.e.a();
    }

    private void g() {
        if (!this.a) {
            this.h.a(Event.g);
            this.a = true;
            if (this.f != null && this.f.f() != null) {
                this.f.g();
            }
        }
    }

    private void h() {
        if (this.a) {
            this.h.a(Event.h);
            this.a = false;
            if (this.f != null) {
                this.f.h();
            }
        }
    }

    private void i() {
        if (this.b && this.c && this.d) {
            g();
        } else {
            h();
        }
    }

    public String toString() {
        return bt.a((Object) this).a("controllerAttached", this.a).a("holderAttached", this.b).a("drawableVisible", this.c).a("activityStarted", this.d).a("events", this.h.toString()).toString();
    }
}
