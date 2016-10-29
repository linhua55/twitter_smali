package com.twitter.android.moments.ui.fullscreen;

import afu;
import ahh;
import android.graphics.Rect;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
class hf implements afu {
    final /* synthetic */ he a;

    hf(he heVar) {
        this.a = heVar;
    }

    public void a(ahh ahh, Size size, Rect rect) {
        this.a.c = size.e();
        this.a.a.setAspectRatio(this.a.c);
        this.a.a(ahh);
    }

    public void a(ahh ahh) {
        this.a.b.post(new hg(this, ahh));
    }

    public void a(ahh ahh, boolean z) {
        this.a.e = z;
        if (z) {
            this.a.b.setAspectRatio(this.a.c);
        } else {
            this.a.b.a();
        }
        this.a.a(ahh);
    }

    public void a(ahh ahh, int i) {
        this.a.d = i;
        this.a.a(ahh);
    }
}
