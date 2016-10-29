package defpackage;

import com.twitter.config.c;

/* compiled from: Twttr */
/* renamed from: aae */
public class aae {
    public final boolean a;
    public final boolean b;
    public final int c;

    aae(aaf aaf) {
        this.a = aaf.a;
        this.b = aaf.b;
        this.c = aaf.c;
    }

    public static aaf a() {
        return new aaf().a(true).b(c.d("vine_fullscreen_4595"));
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        aae aae = (aae) obj;
        if (this.c != aae.c || this.b != aae.b) {
            return false;
        }
        if (this.a != aae.a) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i;
        int i2 = 1;
        if (this.a) {
            i = 1;
        } else {
            i = 0;
        }
        i *= 31;
        if (!this.b) {
            i2 = 0;
        }
        return ((i + i2) * 31) + this.c;
    }
}
