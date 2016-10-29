package defpackage;

/* compiled from: Twttr */
/* renamed from: hm */
final class hm {
    public final String a;
    public final hm b;
    public final int c;

    public hm(String str, hm hmVar) {
        this.a = str;
        this.b = hmVar;
        this.c = hmVar == null ? 1 : hmVar.c + 1;
    }

    public String a(char[] cArr, int i, int i2) {
        if (this.a.length() != i2) {
            return null;
        }
        int i3 = 0;
        while (this.a.charAt(i3) == cArr[i + i3]) {
            i3++;
            if (i3 >= i2) {
                return this.a;
            }
        }
        return null;
    }
}
