package defpackage;

/* compiled from: Twttr */
/* renamed from: art */
public class art {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;

    public art(int i, int i2, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        art art = (art) obj;
        if (this.a == art.a && this.b == art.b && this.c == art.c && this.d == art.d && this.e == art.e && this.f == art.f) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.a * 31) + this.b) * 31) + this.c) * 31) + this.d) * 31) + this.e) * 31) + this.f;
    }
}
