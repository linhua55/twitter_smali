package com.twitter.android.moments.ui.fullscreen;

import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import com.twitter.moments.core.ui.widget.sectionpager.d;
import rx.o;

/* compiled from: Twttr */
class fq implements fr {
    private final fr b;

    fq(d dVar) {
        if (dVar instanceof fr) {
            this.b = (fr) dVar;
        } else {
            this.b = null;
        }
    }

    public void g() {
        if (this.b != null) {
            this.b.g();
        }
    }

    public void a(AVMedia aVMedia) {
        if (this.b != null) {
            this.b.a(aVMedia);
        }
    }

    public void a(bd bdVar) {
        if (this.b != null) {
            this.b.a(bdVar);
        }
    }

    public void h() {
        if (this.b != null) {
            this.b.h();
        }
    }

    public o<Integer> b() {
        if (this.b != null) {
            return this.b.b();
        }
        return o.c();
    }
}
