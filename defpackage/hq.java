package defpackage;

/* compiled from: Twttr */
/* renamed from: hq */
public final class hq extends hn {
    private final int c;
    private final int d;
    private final int e;

    hq(String str, int i, int i2, int i3, int i4) {
        super(str, i);
        this.c = i2;
        this.d = i3;
        this.e = i4;
    }

    public boolean a(int i) {
        return false;
    }

    public boolean a(int i, int i2) {
        return false;
    }

    public boolean a(int[] iArr, int i) {
        return i == 3 && iArr[0] == this.c && iArr[1] == this.d && iArr[2] == this.e;
    }
}
