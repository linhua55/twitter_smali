package com.twitter.library.api;

import android.accounts.Account;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import com.twitter.app.common.account.a;
import com.twitter.config.AppConfig;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.timeline.s;
import com.twitter.util.x;
import java.util.Locale;

/* compiled from: Twttr */
public class ad extends b<as> {
    protected /* synthetic */ c f() {
        return b();
    }

    public ad(Context context, ab abVar) {
        super(context, ad.class.getName(), abVar);
    }

    public static ad a(Context context, Session session, String str, boolean z) {
        return a(context, new ab(session), str, z);
    }

    public static ad a(Context context, ab abVar, String str, boolean z) {
        a b = com.twitter.library.util.b.b(abVar.e);
        ad adVar = (ad) new ad(context, abVar).b("user_id", abVar.c).b("format", str).a("account", b == null ? null : b.a()).a("has_unknown_phone_number", z);
        Locale locale = context.getResources().getConfiguration().locale;
        if (locale != null) {
            adVar.b("lang", com.twitter.util.a.b(locale));
        }
        return adVar;
    }

    protected d a() {
        Context context = this.p;
        Bundle bundle = this.o;
        boolean z = bundle.getBoolean("phone");
        String string = bundle.getString("format");
        Account account = (Account) bundle.getParcelable("account");
        e a = K().a("prompts", "suggest").a("format", string).a("client_namespace", "native").a("force_user_language", bundle.getString("lang")).a("has_unknown_phone_number", z).a("notifications_device", PushRegistration.c(context));
        if (account != null) {
            a.a("notifications_twitter", (long) PushRegistration.a(context, account.name)).a("notifications_app", PushRegistration.d(context, account.name));
        }
        if (!x.a(context)) {
            a.a("no_play_store", true);
        }
        if (AppConfig.m().p()) {
            SharedPreferences sharedPreferences = this.p.getSharedPreferences("debug_prefs", 0);
            String string2 = bundle.getString("force_campaign");
            if (string2 == null && sharedPreferences.getBoolean("pb_force_campaign_enabled", false)) {
                string2 = sharedPreferences.getString("pb_force_campaign_id", null);
            }
            if (string2 != null) {
                String string3 = sharedPreferences.getString("pb_force_campaign_cookie", TtmlNode.ANONYMOUS_REGION_ID);
                Boolean valueOf = Boolean.valueOf(sharedPreferences.getBoolean("pb_force_campaign_sticky", false));
                a.a("force_campaign", "targeting_" + string2);
                a.a("force_fatigue_on_override", true);
                a.a("force_cookie", string3);
                sharedPreferences.edit().putBoolean("pb_force_campaign_enabled", valueOf.booleanValue()).apply();
            }
        }
        return a.a();
    }

    protected as b() {
        return as.a(41);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            com.twitter.util.ab.a(aaVar.c, "prompt", (s) asVar.b(), s.a);
        }
    }
}
