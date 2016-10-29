package defpackage;

import com.twitter.config.AppConfig;
import com.twitter.config.d;

/* compiled from: Twttr */
/* renamed from: aav */
public class aav {
    public static boolean a() {
        return AppConfig.m().p() || d.a("legacy_deciders_scribe_linger");
    }

    public static long b() {
        return (long) (d.a("legacy_deciders_scribe_status_linger_minimum_threshold", 0.2f) * 1000.0f);
    }

    public static long c() {
        return (long) (d.a("legacy_deciders_scribe_status_linger_maximum_threshold", 30.0f) * 1000.0f);
    }
}
