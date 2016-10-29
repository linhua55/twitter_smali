package com.twitter.model.moments;

import android.graphics.Rect;
import com.twitter.util.math.Size;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
public class g {
    public static final n<g> a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final Size f;

    static {
        a = new j();
    }

    private g(i iVar) {
        this.b = iVar.a;
        this.c = iVar.b;
        this.d = iVar.c;
        this.e = iVar.d;
        this.f = iVar.e;
    }

    public Rect a() {
        return new Rect(this.b, this.c, this.b + this.d, this.c + this.e);
    }

    public float b() {
        return ((float) this.d) / ((float) this.e);
    }
}
