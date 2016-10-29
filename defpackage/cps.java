package defpackage;

import android.support.annotation.ColorInt;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: cps */
public class cps extends f<cpq> {
    private float a;
    private int b;
    private int c;
    private int d;
    private float e;
    private int f;

    public /* synthetic */ Object c() {
        return d();
    }

    public cps a(int i) {
        this.f = i;
        return this;
    }

    public cps a(float f) {
        this.e = f;
        return this;
    }

    public cps b(float f) {
        this.a = f;
        return this;
    }

    public cps b(int i) {
        this.b = i;
        return this;
    }

    public cps c(@ColorInt int i) {
        this.c = i;
        return this;
    }

    public cps d(@ColorInt int i) {
        this.d = i;
        return this;
    }

    public cpq d() {
        return new cpq();
    }
}
