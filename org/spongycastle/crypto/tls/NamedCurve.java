package org.spongycastle.crypto.tls;

/* compiled from: Twttr */
public class NamedCurve {
    public static boolean a(int i) {
        if (i < 1 || i > 28) {
            return i >= 65281 && i <= 65282;
        } else {
            return true;
        }
    }

    public static boolean b(int i) {
        switch (i) {
            case 65281:
            case 65282:
                return false;
            default:
                return true;
        }
    }
}
