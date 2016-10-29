package com.twitter.android.moments.ui.guide;

import com.twitter.android.moments.ui.AutoplayableVideoFillCropFrameLayout;
import com.twitter.library.av.u;
import com.twitter.model.moments.g;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
class ap extends u {
    final /* synthetic */ Size a;
    final /* synthetic */ AutoplayableVideoFillCropFrameLayout b;
    final /* synthetic */ g c;
    final /* synthetic */ am d;

    ap(am amVar, Size size, AutoplayableVideoFillCropFrameLayout autoplayableVideoFillCropFrameLayout, g gVar) {
        this.d = amVar;
        this.a = size;
        this.b = autoplayableVideoFillCropFrameLayout;
        this.c = gVar;
    }

    public void a(int i, int i2) {
        if (this.a == null || Math.abs((((float) i) / ((float) i2)) - this.a.e()) > 0.001f) {
            this.b.a(Size.a(i, i2), this.c != null ? this.c.a() : null);
        }
    }
}
