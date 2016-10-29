package com.twitter.model.moments.viewmodels;

import com.twitter.util.y;
import com.twitter.util.z;

/* compiled from: Twttr */
public abstract class f extends MomentPage {
    private final y<f> a;
    private boolean b;

    public abstract boolean a();

    protected f(g gVar) {
        super(gVar);
        this.a = new y();
        this.b = gVar.a;
    }

    public boolean b() {
        return this.b;
    }

    public void a(boolean z) {
        this.b = z;
        c();
    }

    protected void c() {
        this.a.a(this);
    }

    public void a(z<f> zVar) {
        if (a() || b()) {
            zVar.a(this);
        } else {
            this.a.a(zVar);
        }
    }

    public void b(z<f> zVar) {
        this.a.b(zVar);
    }
}
