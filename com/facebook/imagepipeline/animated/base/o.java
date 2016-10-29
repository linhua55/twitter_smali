package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.common.references.a;
import java.util.List;

/* compiled from: Twttr */
public class o {
    private final l a;
    private a<Bitmap> b;
    private List<a<Bitmap>> c;
    private int d;

    o(l lVar) {
        this.a = lVar;
    }

    public l a() {
        return this.a;
    }

    public a<Bitmap> b() {
        return a.b(this.b);
    }

    public o a(a<Bitmap> aVar) {
        this.b = a.b(aVar);
        return this;
    }

    public int c() {
        return this.d;
    }

    public o a(int i) {
        this.d = i;
        return this;
    }

    public List<a<Bitmap>> d() {
        return a.a(this.c);
    }

    public o a(List<a<Bitmap>> list) {
        this.c = a.a(list);
        return this;
    }

    public n e() {
        try {
            n nVar = new n(this);
            return nVar;
        } finally {
            a.c(this.b);
            this.b = null;
            a.a(this.c);
            this.c = null;
        }
    }
}
