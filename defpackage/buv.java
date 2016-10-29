package defpackage;

import com.twitter.config.c;
import com.twitter.config.d;

/* compiled from: Twttr */
/* renamed from: buv */
public class buv {
    public static boolean a() {
        return d.a("photo_stickers_enabled");
    }

    public static boolean a(boolean z) {
        if (buv.a()) {
            if ((c.a("photo_stickers_android_4419", "creation_only", "creation_consumption", "creation_consumption_partial") || d.a("photo_stickers_android_creation_enabled")) && (!z || d.a("photo_stickers_dm_enabled"))) {
                return true;
            }
        }
        return false;
    }

    public static boolean b() {
        if (buv.a()) {
            if (c.a("photo_stickers_android_4419", "consumption_only", "creation_consumption", "creation_consumption_partial")) {
                return true;
            }
        }
        return false;
    }

    public static boolean c() {
        return buv.a() && d.a("photo_stickers_timeline_enabled");
    }

    public static boolean d() {
        return buv.b() && buv.c();
    }

    public static boolean e() {
        if (buv.a() && buv.c()) {
            if (c.a("photo_stickers_android_4419", "consumption_only", "creation_consumption")) {
                return true;
            }
        }
        return false;
    }
}
