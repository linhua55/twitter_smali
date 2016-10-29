package com.twitter.android.periscope;

import com.twitter.android.av.PeriscopeFullscreenChromeView;
import com.twitter.android.av.bj;
import com.twitter.library.av.control.f;
import defpackage.dbo;

/* compiled from: Twttr */
class s implements f {
    private final bj a;
    private PeriscopeFullscreenChromeView b;
    private dbo c;
    private boolean d;

    s(bj bjVar) {
        this.a = bjVar;
    }

    public void a(PeriscopeFullscreenChromeView periscopeFullscreenChromeView) {
        this.b = periscopeFullscreenChromeView;
    }

    public void a(dbo dbo) {
        this.c = dbo;
    }

    public void w() {
        if (this.c != null) {
            this.d = false;
            this.c.a();
        }
        if (this.b != null) {
            this.b.w();
        }
        this.a.a(4000);
    }

    public void y() {
        if (this.c != null) {
            this.d = !this.d;
            if (this.d) {
                this.c.a(false);
            } else {
                this.c.b();
            }
        }
        if (this.b != null) {
            this.b.y();
        }
    }

    public void z() {
        if (this.c != null) {
            this.c.a(true);
        }
        if (this.b != null) {
            this.b.z();
        }
        this.a.a();
    }

    public void x() {
    }

    public void a(boolean z, long j) {
        if (this.b != null) {
            this.b.a(z, j);
        }
        if (this.c != null) {
            this.c.a(j);
        }
        this.a.a(4000);
    }
}
