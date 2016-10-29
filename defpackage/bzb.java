package defpackage;

import caw;
import cmb;

/* compiled from: Twttr */
/* renamed from: bzb */
public class bzb {
    public static Boolean a(String str, cmb cmb) {
        try {
            Boolean bool = (Boolean) cmb.a(str, Boolean.class);
            if (bool != null) {
                return bool;
            }
        } catch (ClassCastException e) {
        }
        String a = caw.a(str, cmb);
        if (a == null) {
            return null;
        }
        return Boolean.valueOf(a.toLowerCase().equals("true"));
    }

    public static boolean a(String str, cmb cmb, boolean z) {
        Boolean a = bzb.a(str, cmb);
        return a == null ? z : a.booleanValue();
    }
}
