package com.twitter.config;

import com.twitter.platform.PlatformContext;
import com.twitter.platform.q;
import com.twitter.util.aj;
import com.twitter.util.k;
import java.util.UUID;

/* compiled from: Twttr */
public abstract class b {
    private static String a;
    private static long b;

    static {
        b = 0;
    }

    static long a(String str) {
        String b = k.b(str);
        return Long.parseLong(b.substring(b.length() - 14), 16) & 9007199254740991L;
    }

    public static long a() {
        if (b == 0) {
            b = a(b());
        }
        return b;
    }

    public static String b() {
        if (aj.a(a)) {
            q b = PlatformContext.f().b();
            String a = b.a("client_uuid", null);
            if (a == null) {
                a = UUID.randomUUID().toString();
                b.a().a("client_uuid", a).a();
            }
            a = a;
        }
        return a;
    }
}
