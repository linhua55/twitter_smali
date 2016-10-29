package defpackage;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.k;

/* compiled from: Twttr */
/* renamed from: ckj */
public class ckj {
    public static final k<ckj> a;
    public final float b;
    public final float c;
    public final float d;
    public final float e;

    static {
        a = new ckk();
    }

    public ckj(float f, float f2, float f3, float f4) {
        this.b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
    }

    public int hashCode() {
        return (((((ObjectUtils.a(this.b) * 31) + ObjectUtils.a(this.c)) * 31) + ObjectUtils.a(this.d)) * 31) + ObjectUtils.a(this.e);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ckj)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        ckj ckj = (ckj) obj;
        if (this.b == ckj.b && this.c == ckj.c && this.d == ckj.d && this.e == ckj.e) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "transform:" + this.b + '_' + this.c + '_' + this.d + '_' + this.e;
    }
}
