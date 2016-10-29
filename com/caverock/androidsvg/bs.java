package com.caverock.androidsvg;

import android.graphics.Path;

/* compiled from: Twttr */
class bs extends bv {
    public float a;
    public float b;
    public Path c;
    final /* synthetic */ bm d;

    public bs(bm bmVar, float f, float f2, Path path) {
        this.d = bmVar;
        super(null);
        this.a = f;
        this.b = f2;
        this.c = path;
    }

    public boolean a(bf bfVar) {
        if (!(bfVar instanceof bg)) {
            return true;
        }
        bm.d("Using <textPath> elements in a clip path is not supported.", new Object[0]);
        return false;
    }

    public void a(String str) {
        if (this.d.t()) {
            Path path = new Path();
            this.d.f.d.getTextPath(str, 0, str.length(), this.a, this.b, path);
            this.c.addPath(path);
        }
        this.a += this.d.f.d.measureText(str);
    }
}
