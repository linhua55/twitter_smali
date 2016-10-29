package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import bx;
import com.facebook.common.references.a;
import java.util.List;
import javax.annotation.Nullable;

/* compiled from: Twttr */
public class n {
    private final l a;
    private final int b;
    @Nullable
    private a<Bitmap> c;
    @Nullable
    private List<a<Bitmap>> d;

    n(o oVar) {
        this.a = (l) bx.a(oVar.a());
        this.b = oVar.c();
        this.c = oVar.b();
        this.d = oVar.d();
    }

    private n(l lVar) {
        this.a = (l) bx.a(lVar);
        this.b = 0;
    }

    public static n a(l lVar) {
        return new n(lVar);
    }

    public static o b(l lVar) {
        return new o(lVar);
    }

    public l a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    @Nullable
    public synchronized a<Bitmap> a(int i) {
        a<Bitmap> b;
        if (this.d != null) {
            b = a.b((a) this.d.get(i));
        } else {
            b = null;
        }
        return b;
    }

    public synchronized boolean b(int i) {
        boolean z;
        z = (this.d == null || this.d.get(i) == null) ? false : true;
        return z;
    }

    public synchronized a<Bitmap> c() {
        return a.b(this.c);
    }

    public synchronized void d() {
        a.c(this.c);
        this.c = null;
        a.a(this.d);
        this.d = null;
    }
}
