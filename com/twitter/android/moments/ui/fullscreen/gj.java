package com.twitter.android.moments.ui.fullscreen;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.ProgressBar;
import com.twitter.model.moments.viewmodels.f;
import com.twitter.model.moments.viewmodels.y;
import com.twitter.util.d;
import crd;

/* compiled from: Twttr */
class gj<T extends f & y> extends cn {
    private static final Interpolator a;
    private final int b;

    static {
        a = crd.b();
    }

    gj(ba baVar, T t, ViewGroup viewGroup, ProgressBar progressBar, int i) {
        super(baVar, t, viewGroup, progressBar, null);
        viewGroup.setBackgroundColor(dl.a(viewGroup.getResources(), (y) t).b);
        this.b = i;
    }

    protected void a(View view) {
        super.a(view);
        d.a(view, this.b, 1.05f, a);
    }
}
