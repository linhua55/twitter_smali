package defpackage;

import tv.periscope.android.library.p;

/* renamed from: kd */
public final class kd {
    public static byte a(Boolean bool) {
        return bool != null ? bool.booleanValue() ? (byte) 1 : (byte) 0 : (byte) -1;
    }

    public static Boolean a(byte b) {
        switch (b) {
            case p.View_android_theme /*0*/:
                return Boolean.FALSE;
            case p.View_android_focusable /*1*/:
                return Boolean.TRUE;
            default:
                return null;
        }
    }
}
