package com.caverock.androidsvg;

import android.graphics.Path;

/* compiled from: Twttr */
class bq extends br {
    final /* synthetic */ bm a;
    private Path f;

    public bq(bm bmVar, Path path, float f, float f2) {
        this.a = bmVar;
        super(bmVar, f, f2);
        this.f = path;
    }

    public void a(String str) {
        if (this.a.t()) {
            if (this.a.f.b) {
                this.a.a.drawTextOnPath(str, this.f, this.b, this.c, this.a.f.d);
            }
            if (this.a.f.c) {
                this.a.a.drawTextOnPath(str, this.f, this.b, this.c, this.a.f.e);
            }
        }
        this.b += this.a.f.d.measureText(str);
    }
}
