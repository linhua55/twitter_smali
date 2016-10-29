package com.caverock.androidsvg;

import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;

/* compiled from: Twttr */
class bu extends bv {
    float a;
    float b;
    RectF c;
    final /* synthetic */ bm d;

    public bu(bm bmVar, float f, float f2) {
        this.d = bmVar;
        super(null);
        this.c = new RectF();
        this.a = f;
        this.b = f2;
    }

    public boolean a(bf bfVar) {
        if (!(bfVar instanceof bg)) {
            return true;
        }
        au a = bfVar.u.a(((bg) bfVar).a);
        if (a == null) {
            bm.e("TextPath path reference '%s' not found", r0.a);
            return false;
        }
        ad adVar = (ad) a;
        Path a2 = new bp(this.d, adVar.a).a();
        if (adVar.e != null) {
            a2.transform(adVar.e);
        }
        RectF rectF = new RectF();
        a2.computeBounds(rectF, true);
        this.c.union(rectF);
        return false;
    }

    public void a(String str) {
        if (this.d.t()) {
            Rect rect = new Rect();
            this.d.f.d.getTextBounds(str, 0, str.length(), rect);
            RectF rectF = new RectF(rect);
            rectF.offset(this.a, this.b);
            this.c.union(rectF);
        }
        this.a += this.d.f.d.measureText(str);
    }
}
