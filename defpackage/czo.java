package defpackage;

/* compiled from: Twttr */
/* renamed from: czo */
public final class czo {
    public static int a(int i) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i - 1));
    }

    public static boolean b(int i) {
        return ((i + -1) & i) == 0;
    }
}
