package com.twitter.android.media.imageeditor;

import android.graphics.Matrix;
import android.graphics.RectF;
import com.twitter.util.math.c;
import com.twitter.util.object.e;
import cuj;
import defpackage.ckf;

/* compiled from: Twttr */
class ai implements cuj<ckf> {
    final /* synthetic */ float a;
    final /* synthetic */ c b;
    final /* synthetic */ int c;
    final /* synthetic */ float d;
    final /* synthetic */ ag e;

    ai(ag agVar, float f, c cVar, int i, float f2) {
        this.e = agVar;
        this.a = f;
        this.b = cVar;
        this.c = i;
        this.d = f2;
    }

    public boolean a(ckf ckf) {
        ckf ckf2 = (ckf) e.a(ckf);
        Matrix a = ckf2.a(this.a, this.b, this.c);
        float f = ckf2.b.j.b / 2.0f;
        RectF rectF = new RectF(-0.5f, -f, 0.5f, f);
        a.mapRect(rectF);
        return rectF.left <= 1.0f && rectF.top <= this.d && rectF.right >= 0.0f && rectF.bottom >= 0.0f;
    }
}
