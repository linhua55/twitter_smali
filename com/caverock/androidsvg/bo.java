package com.caverock.androidsvg;

/* compiled from: Twttr */
class bo {
    public float a;
    public float b;
    public float c;
    public float d;
    final /* synthetic */ bm e;

    public bo(bm bmVar, float f, float f2, float f3, float f4) {
        this.e = bmVar;
        this.c = 0.0f;
        this.d = 0.0f;
        this.a = f;
        this.b = f2;
        double sqrt = Math.sqrt((double) ((f3 * f3) + (f4 * f4)));
        if (sqrt != 0.0d) {
            this.c = (float) (((double) f3) / sqrt);
            this.d = (float) (((double) f4) / sqrt);
        }
    }

    public void a(float f, float f2) {
        float f3 = f - this.a;
        float f4 = f2 - this.b;
        double sqrt = Math.sqrt((double) ((f3 * f3) + (f4 * f4)));
        if (sqrt != 0.0d) {
            this.c = ((float) (((double) f3) / sqrt)) + this.c;
            this.d += (float) (((double) f4) / sqrt);
        }
    }

    public void a(bo boVar) {
        this.c += boVar.c;
        this.d += boVar.d;
    }

    public String toString() {
        return "(" + this.a + "," + this.b + " " + this.c + "," + this.d + ")";
    }
}
