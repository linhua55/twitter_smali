package defpackage;

/* compiled from: Twttr */
/* renamed from: gl */
public class gl implements gm {
    public static final gm a;
    int b;
    boolean c;
    boolean d;

    static {
        a = gl.a(Integer.MAX_VALUE, true, true);
    }

    private gl(int i, boolean z, boolean z2) {
        this.b = i;
        this.c = z;
        this.d = z2;
    }

    public int a() {
        return this.b;
    }

    public boolean b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public int hashCode() {
        int i = 0;
        int i2 = (this.c ? 4194304 : 0) ^ this.b;
        if (this.d) {
            i = 8388608;
        }
        return i2 ^ i;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof gl)) {
            return false;
        }
        gl glVar = (gl) obj;
        if (this.b == glVar.b && this.c == glVar.c && this.d == glVar.d) {
            return true;
        }
        return false;
    }

    public static gm a(int i, boolean z, boolean z2) {
        return new gl(i, z, z2);
    }
}
