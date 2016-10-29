package com.twitter.android.composer;

import com.twitter.android.composer.geotag.e;
import com.twitter.android.geo.GeoTagState;

/* compiled from: Twttr */
class u implements e {
    final /* synthetic */ ComposerActivity a;

    u(ComposerActivity composerActivity) {
        this.a = composerActivity;
    }

    public boolean a() {
        return this.a.aO.a();
    }

    public void a(boolean z) {
        if (!z) {
            this.a.aq.b();
        }
    }

    public void a(GeoTagState geoTagState) {
        this.a.c();
    }

    public void b(boolean z) {
        if (z) {
            this.a.a(3, true, true);
        } else {
            this.a.a(1, true);
        }
    }

    public boolean b() {
        return this.a.S == 3;
    }

    public ar a(Runnable runnable) {
        return this.a.a(runnable);
    }
}
