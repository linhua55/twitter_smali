package com.caverock.androidsvg;

/* compiled from: Twttr */
class bw extends bv {
    public float a;
    final /* synthetic */ bm b;

    private bw(bm bmVar) {
        this.b = bmVar;
        super(null);
        this.a = 0.0f;
    }

    public void a(String str) {
        this.a += this.b.f.d.measureText(str);
    }
}
