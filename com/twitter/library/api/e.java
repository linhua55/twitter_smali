package com.twitter.library.api;

import android.content.Context;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.library.client.Session;
import com.twitter.library.service.c;

/* compiled from: Twttr */
public class e extends w {
    public e(Context context, Session session) {
        super(context, e.class.getName(), session);
    }

    protected void a(com.twitter.library.service.e eVar) {
        super.a(eVar);
        AppConfig m = AppConfig.m();
        if (!m.b() && !m.a()) {
            eVar.b("twitter.com");
        } else if (d.a("app_event_track_production_server_enabled")) {
            eVar.b("twitter.com");
        } else {
            eVar.b("macaw-nymizer.staging37.macaw-nymizer.service.smf1.twitter.com");
            eVar.c("http");
        }
    }

    protected c f() {
        return null;
    }
}
