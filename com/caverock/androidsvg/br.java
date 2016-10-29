package com.caverock.androidsvg;

/* compiled from: Twttr */
class br extends bv {
    public float b;
    public float c;
    final /* synthetic */ bm d;

    public br(bm bmVar, float f, float f2) {
        this.d = bmVar;
        super(null);
        this.b = f;
        this.c = f2;
    }

    public void a(String str) {
        bm.f("TextSequence render", new Object[0]);
        if (this.d.t()) {
            if (this.d.f.b) {
                this.d.a.drawText(str, this.b, this.c, this.d.f.d);
            }
            if (this.d.f.c) {
                this.d.a.drawText(str, this.b, this.c, this.d.f.e);
            }
        }
        this.b += this.d.f.d.measureText(str);
    }
}
