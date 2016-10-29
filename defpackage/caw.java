package defpackage;

/* compiled from: Twttr */
/* renamed from: caw */
public class caw {
    public static String a(String str, cmb cmb) {
        try {
            return (String) cmb.a(str, String.class);
        } catch (ClassCastException e) {
            return null;
        }
    }
}
