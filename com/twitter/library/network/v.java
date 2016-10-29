package com.twitter.library.network;

import com.twitter.config.AppConfig;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.q;
import com.twitter.platform.s;
import com.twitter.util.collection.ar;
import com.twitter.util.collection.r;
import com.twitter.util.object.g;
import cum;
import defpackage.cwj;
import java.net.URI;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* compiled from: Twttr */
public class v {
    private static final Set<String> a;
    private static v b;
    private final q c;
    private final g<Map<String, s>> d;

    static {
        a = ar.b((Object) "/1.1/help/settings.json");
    }

    public static synchronized void a(q qVar, g<Map<String, s>> gVar) {
        synchronized (v.class) {
            if (b != null) {
                throw new IllegalStateException("Network simulation settings class has already been initialized.");
            }
            b = new v(qVar, gVar);
        }
    }

    public static synchronized v a() {
        v vVar;
        synchronized (v.class) {
            if (b != null) {
                vVar = b;
            } else if (cwj.b()) {
                vVar = new v(PlatformContext.f().b(), new cum(r.e()));
            } else {
                throw new IllegalStateException("Network simulation settings class hasn't been initialized.");
            }
        }
        return vVar;
    }

    public v(q qVar, g<Map<String, s>> gVar) {
        this.c = qVar;
        this.d = gVar;
    }

    public String b() {
        return AppConfig.m().p() ? this.c.a("network_simulation_profile", "Disabled") : "Disabled";
    }

    public boolean c() {
        return d() != null;
    }

    public s d() {
        String b = b();
        if (!"Custom".equals(b)) {
            return b(b);
        }
        int a = this.c.a("custom_network_simulation_bandwidth", -1);
        int a2 = this.c.a("custom_network_simulation_latency", -1);
        if (a == -1 || a2 == -1) {
            return null;
        }
        return new s(b, a, a2);
    }

    public boolean a(String str) {
        return str.equals("network_simulation_profile") || str.equals("custom_network_simulation_bandwidth") || str.equals("custom_network_simulation_latency");
    }

    public boolean a(URI uri) {
        return !a.contains(uri.getPath());
    }

    public void a(boolean z, int i, int i2, String str) throws IllegalArgumentException {
        if (a(z, i, i2)) {
            s a = this.c.a().a("custom_network_simulation_bandwidth", i).a("custom_network_simulation_latency", i2);
            String str2 = "network_simulation_profile";
            if (!z) {
                str = "Disabled";
            }
            a.a(str2, str).a();
        }
    }

    public void a(s sVar) {
        a(true, sVar.b(), sVar.c(), sVar.a());
    }

    public void e() {
        a(false, 0, 0, "Disabled");
    }

    public Collection<s> f() {
        return ((Map) this.d.b()).values();
    }

    public s b(String str) {
        return (s) ((Map) this.d.b()).get(str);
    }

    private static boolean a(boolean z, int i, int i2) throws IllegalArgumentException {
        if (z) {
            StringBuilder stringBuilder = new StringBuilder();
            if (i < 32) {
                stringBuilder.append("Bandwidth limit must be greater than ").append(32);
            }
            if (i2 < 1 || i2 > 30000) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append("\n");
                }
                stringBuilder.append(String.format("Latency must be between %d and %d", new Object[]{Integer.valueOf(1), Integer.valueOf(30000)}));
            }
            if (stringBuilder.length() > 0) {
                throw new IllegalArgumentException(stringBuilder.toString());
            }
        }
        return true;
    }
}
