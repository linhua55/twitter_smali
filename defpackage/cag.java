package defpackage;

import cmb;

/* compiled from: Twttr */
/* renamed from: cag */
public class cag {
    public static Long a(String str, cmb cmb) {
        try {
            String str2 = (String) cmb.a(str, String.class);
            return str2 != null ? Long.valueOf(str2) : null;
        } catch (ClassCastException e) {
            try {
                return (Long) cmb.a(str, Long.class);
            } catch (ClassCastException e2) {
                return null;
            }
        } catch (NumberFormatException e3) {
            return null;
        }
    }
}
