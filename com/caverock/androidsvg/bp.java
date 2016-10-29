package com.caverock.androidsvg;

import android.graphics.Path;

/* compiled from: Twttr */
class bp implements af {
    Path a;
    float b;
    float c;
    final /* synthetic */ bm d;

    public bp(bm bmVar, ae aeVar) {
        this.d = bmVar;
        this.a = new Path();
        if (aeVar != null) {
            aeVar.a(this);
        }
    }

    public Path a() {
        return this.a;
    }

    public void a(float f, float f2) {
        this.a.moveTo(f, f2);
        this.b = f;
        this.c = f2;
    }

    public void b(float f, float f2) {
        this.a.lineTo(f, f2);
        this.b = f;
        this.c = f2;
    }

    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        this.a.cubicTo(f, f2, f3, f4, f5, f6);
        this.b = f5;
        this.c = f6;
    }

    public void a(float f, float f2, float f3, float f4) {
        this.a.quadTo(f, f2, f3, f4);
        this.b = f3;
        this.c = f4;
    }

    public void a(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
        bm.b(this.b, this.c, f, f2, f3, z, z2, f4, f5, this);
        this.b = f4;
        this.c = f5;
    }

    public void b() {
        this.a.close();
    }
}
