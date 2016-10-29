package defpackage;

/* compiled from: Twttr */
/* renamed from: hp */
public final class hp extends hn {
    private final int c;
    private final int d;

    hp(String str, int i, int i2, int i3) {
        super(str, i);
        this.c = i2;
        this.d = i3;
    }

    public boolean a(int i) {
        return false;
    }

    public boolean a(int i, int i2) {
        return i == this.c && i2 == this.d;
    }

    public boolean a(int[] iArr, int i) {
        return i == 2 && iArr[0] == this.c && iArr[1] == this.d;
    }
}
