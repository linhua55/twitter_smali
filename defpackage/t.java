package defpackage;

/* compiled from: Twttr */
/* renamed from: t */
public class t {
    public static boolean a(char c) {
        return (' ' <= c && c <= '~') || c == '\r' || c == '\n';
    }

    public static boolean a(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            if (!t.a(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }
}
