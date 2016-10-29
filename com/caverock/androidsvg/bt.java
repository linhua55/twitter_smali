package com.caverock.androidsvg;

import android.graphics.Paint;
import android.graphics.Typeface;
import com.caverock.androidsvg.SVG.Style;

/* compiled from: Twttr */
class bt implements Cloneable {
    public Style a;
    public boolean b;
    public boolean c;
    public Paint d;
    public Paint e;
    public k f;
    public k g;
    public boolean h;
    public boolean i;
    final /* synthetic */ bm j;

    public bt(bm bmVar) {
        this.j = bmVar;
        this.d = new Paint();
        this.d.setFlags(385);
        this.d.setStyle(Paint.Style.FILL);
        this.d.setTypeface(Typeface.DEFAULT);
        this.e = new Paint();
        this.e.setFlags(385);
        this.e.setStyle(Paint.Style.STROKE);
        this.e.setTypeface(Typeface.DEFAULT);
        this.a = Style.a();
    }

    protected Object clone() {
        try {
            bt btVar = (bt) super.clone();
            btVar.a = (Style) this.a.clone();
            btVar.d = new Paint(this.d);
            btVar.e = new Paint(this.e);
            return btVar;
        } catch (CloneNotSupportedException e) {
            throw new InternalError(e.toString());
        }
    }
}
