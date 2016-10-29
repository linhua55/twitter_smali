package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;
import com.twitter.model.moments.viewmodels.f;
import com.twitter.moments.core.ui.widget.sectionpager.d;
import rx.o;
import rx.subjects.e;

/* compiled from: Twttr */
public class fp extends fo implements fr {
    private final e<Integer> b;

    public fp(Context context, f fVar, fz fzVar) {
        super(context, fVar, fzVar);
        this.b = e.q();
    }

    public void g() {
        d f = f();
        if (f instanceof fr) {
            ((fr) f).g();
        }
    }

    public void a(AVMedia aVMedia) {
        d f = f();
        if (f instanceof fr) {
            ((fr) f).a(aVMedia);
        }
    }

    public void a(bd bdVar) {
        d f = f();
        if (f instanceof fr) {
            ((fr) f).a(bdVar);
        }
    }

    public void h() {
        d f = f();
        if (f instanceof fr) {
            ((fr) f).h();
        }
    }

    public void a(f fVar) {
        super.a(fVar);
        d f = f();
        if (f instanceof fr) {
            ((fr) f).b().a(this.b);
        }
    }

    public o<Integer> b() {
        return this.b;
    }
}
