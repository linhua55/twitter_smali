package com.caverock.androidsvg;

import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class bn implements af {
    final /* synthetic */ bm a;
    private List<bo> b;
    private float c;
    private float d;
    private bo e;
    private boolean f;
    private boolean g;
    private int h;
    private boolean i;

    public bn(bm bmVar, ae aeVar) {
        this.a = bmVar;
        this.b = new ArrayList();
        this.e = null;
        this.f = false;
        this.g = true;
        this.h = -1;
        if (aeVar != null) {
            aeVar.a(this);
            if (this.i) {
                this.e.a((bo) this.b.get(this.h));
                this.b.set(this.h, this.e);
                this.i = false;
            }
            if (this.e != null) {
                this.b.add(this.e);
            }
        }
    }

    public List<bo> a() {
        return this.b;
    }

    public void a(float f, float f2) {
        if (this.i) {
            this.e.a((bo) this.b.get(this.h));
            this.b.set(this.h, this.e);
            this.i = false;
        }
        if (this.e != null) {
            this.b.add(this.e);
        }
        this.c = f;
        this.d = f2;
        this.e = new bo(this.a, f, f2, 0.0f, 0.0f);
        this.h = this.b.size();
    }

    public void b(float f, float f2) {
        this.e.a(f, f2);
        this.b.add(this.e);
        this.e = new bo(this.a, f, f2, f - this.e.a, f2 - this.e.b);
        this.i = false;
    }

    public void a(float f, float f2, float f3, float f4, float f5, float f6) {
        if (this.g || this.f) {
            this.e.a(f, f2);
            this.b.add(this.e);
            this.f = false;
        }
        this.e = new bo(this.a, f5, f6, f5 - f3, f6 - f4);
        this.i = false;
    }

    public void a(float f, float f2, float f3, float f4) {
        this.e.a(f, f2);
        this.b.add(this.e);
        this.e = new bo(this.a, f3, f4, f3 - f, f4 - f2);
        this.i = false;
    }

    public void a(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
        this.f = true;
        this.g = false;
        bm.b(this.e.a, this.e.b, f, f2, f3, z, z2, f4, f5, this);
        this.g = true;
        this.i = false;
    }

    public void b() {
        this.b.add(this.e);
        b(this.c, this.d);
        this.i = true;
    }
}
