package defpackage;

/* compiled from: Twttr */
/* renamed from: ho */
public final class ho extends hn {
    private static final ho c;
    private final int d;

    static {
        c = new ho("", 0, 0);
    }

    ho(String str, int i, int i2) {
        super(str, i);
        this.d = i2;
    }

    public static ho b() {
        return c;
    }

    public boolean a(int i) {
        return i == this.d;
    }

    public boolean a(int i, int i2) {
        return i == this.d && i2 == 0;
    }

    public boolean a(int[] iArr, int i) {
        return i == 1 && iArr[0] == this.d;
    }
}
