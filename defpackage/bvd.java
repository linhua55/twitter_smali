package defpackage;

import com.google.android.exoplayer.util.Util;
import com.twitter.config.c;

/* compiled from: Twttr */
/* renamed from: bvd */
public class bvd {
    public static boolean a() {
        return Util.SDK_INT >= 19 && c.a("twitterscope_4198").equals("card");
    }

    public static boolean b() {
        if (Util.SDK_INT >= 19) {
            if (c.a("twitterscope_4198", new String[]{"card"})) {
                return true;
            }
        }
        return false;
    }
}
