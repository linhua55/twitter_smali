package defpackage;

import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: csz */
public class csz {
    public static boolean a(String str) {
        return aj.b(str.trim()) && csy.a.matcher(str).replaceAll("").isEmpty();
    }

    public static int b(String str) {
        int i = 0;
        while (csy.a.matcher(str).find()) {
            i++;
        }
        return i;
    }
}
