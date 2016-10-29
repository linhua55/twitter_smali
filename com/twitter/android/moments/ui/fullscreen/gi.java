package com.twitter.android.moments.ui.fullscreen;

import agv;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import bum;
import bym;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.viewmodels.o;
import com.twitter.moments.core.ui.widget.sectionpager.d;

/* compiled from: Twttr */
class gi implements d {
    static final /* synthetic */ boolean a;
    private final FrameLayout b;
    private final gk c;

    static {
        a = !gi.class.desiredAssertionStatus();
    }

    gi(Context context, o oVar, dz dzVar, agv agv) {
        this.b = agv.a();
        Tweet n = oVar.n();
        if (a || n != null) {
            this.c = gk.a(context, this.b, n, dzVar, bym.f() ? new bum(this.b) : null);
            return;
        }
        throw new AssertionError();
    }

    public void d() {
    }

    public void c() {
    }

    public View e() {
        return this.b;
    }

    public void a() {
        this.c.a();
    }
}
