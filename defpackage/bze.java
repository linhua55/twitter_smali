package defpackage;

import com.twitter.config.d;

/* compiled from: Twttr */
/* renamed from: bze */
public final class bze {
    static String a() {
        return d.b("card_registry_capi_endpoint_url");
    }

    public static String b() {
        return d.b("card_poll_create_url", "https://caps.twitter.com/v2/cards/create");
    }

    public static int a(String str) {
        return d.a(String.format("card_registry_capi_%s_refresh_interval_seconds", new Object[]{str}), 0);
    }

    public static int c() {
        return d.a("card_registry_capi_poll2choice_text_only_refresh_interval_seconds", 0);
    }
}
