package defpackage;

import com.twitter.config.d;
import com.twitter.library.geo.provider.param.a;

/* compiled from: Twttr */
/* renamed from: sk */
public class sk {
    public static a a() {
        return a.a().b(sk.b()).a(sk.c()).a((float) sk.d()).a();
    }

    private static long b() {
        return (long) d.a("alerts_v2_experience_fastest_interval_minutes", 5);
    }

    private static long c() {
        return (long) d.a("alerts_v2_experience_desired_interval_minutes", 120);
    }

    private static long d() {
        return (long) d.a("alerts_v2_experience_minimal_displacement_meters", 500);
    }
}
