package defpackage;

import java.util.Random;

/* compiled from: Twttr */
/* renamed from: ddg */
public abstract class ddg {
    private static final char[] a;
    private static final Random b;

    static {
        a = "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        b = new Random();
    }

    public static boolean a(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static boolean b(CharSequence charSequence) {
        return charSequence != null && charSequence.length() > 0;
    }

    public static String a(int i) {
        if (i < 1) {
            throw new IllegalArgumentException("Length must be at least 1");
        }
        char[] cArr = new char[i];
        for (int i2 = 0; i2 < cArr.length; i2++) {
            cArr[i2] = a[b.nextInt(71)];
        }
        return new String(cArr);
    }
}
