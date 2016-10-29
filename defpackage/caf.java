package defpackage;

import cmb;

/* compiled from: Twttr */
/* renamed from: caf */
public class caf {
    public static Integer a(String str, cmb cmb) {
        try {
            String str2 = (String) cmb.a(str, String.class);
            return str2 != null ? Integer.valueOf(str2, 10) : null;
        } catch (ClassCastException e) {
            try {
                return (Integer) cmb.a(str, Integer.class);
            } catch (ClassCastException e2) {
                return null;
            }
        } catch (NumberFormatException e3) {
            return null;
        }
    }
}
