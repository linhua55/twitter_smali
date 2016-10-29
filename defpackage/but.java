package defpackage;

import android.content.Context;
import android.os.Build.VERSION;
import com.twitter.util.c;

/* compiled from: Twttr */
/* renamed from: but */
public class but {
    public static boolean a(Context context) {
        return c.a(context, "tv.periscope.android") || c.a(context, "tv.periscope.android.beta");
    }

    public static boolean a() {
        if (VERSION.SDK_INT >= 19) {
            if (com.twitter.config.c.a("compose_periscope_broadcast_button_android_4476", "enabled", "enabled_4grid")) {
                return true;
            }
        }
        return false;
    }

    public static boolean b() {
        return com.twitter.config.c.a("compose_periscope_broadcast_button_android_4476").equals("enabled_4grid");
    }
}
