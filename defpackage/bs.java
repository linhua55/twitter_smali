package defpackage;

/* compiled from: Twttr */
/* renamed from: bs */
public class bs {
    public static int a(int... iArr) {
        boolean z;
        int i = 1;
        if (iArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        bx.a(z);
        int i2 = iArr[0];
        while (i < iArr.length) {
            if (iArr[i] > i2) {
                i2 = iArr[i];
            }
            i++;
        }
        return i2;
    }
}
