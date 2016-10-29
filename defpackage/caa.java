package defpackage;

import cmb;

/* compiled from: Twttr */
/* renamed from: caa */
public class caa {
    public static Double a(String str, cmb cmb) {
        try {
            String str2 = (String) cmb.a(str, String.class);
            return str2 != null ? Double.valueOf(str2) : null;
        } catch (ClassCastException e) {
            try {
                return (Double) cmb.a(str, Double.class);
            } catch (ClassCastException e2) {
                return null;
            }
        } catch (NumberFormatException e3) {
            return null;
        }
    }
}
