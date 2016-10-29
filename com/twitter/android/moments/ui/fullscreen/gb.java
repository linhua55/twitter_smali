package com.twitter.android.moments.ui.fullscreen;

import android.content.res.Resources;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.Interpolator;
import com.twitter.util.d;
import crd;

/* compiled from: Twttr */
public class gb implements bg {
    private final Interpolator a;
    private final View b;
    private final View c;
    private final int d;
    private final int e;

    public gb(Resources resources, View view, View view2) {
        this.a = crd.b();
        this.b = view;
        this.c = view2;
        this.d = resources.getInteger(2131755056);
        this.e = resources.getDimensionPixelOffset(2131690181);
    }

    public void a(boolean z) {
        a(this.b, 1.0f, 0, z);
        a(true, z);
    }

    public void b(boolean z) {
        a(this.b, 0.0f, this.e, z);
        a(false, z);
    }

    private void a(boolean z, boolean z2) {
        if (this.c != null) {
            ViewCompat.animate(this.c).withLayer().alpha(z ? 1.0f : 0.0f).setDuration((long) (z2 ? this.d : 0)).setInterpolator(this.a).start();
        }
    }

    private void a(View view, float f, int i, boolean z) {
        d.a(view, f, 0, i, z ? this.d : 0, this.a).setListener(new gc(this, f)).start();
    }
}
