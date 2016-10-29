package com.twitter.library.view;

import asp;
import com.twitter.config.d;

/* compiled from: Twttr */
final class e implements asp {
    e() {
    }

    public void a(long j) {
        d.f = d.a("hashflags_settings_enabled");
        d.h = d.b("hashflags_settings_location_prefix");
        int a = d.a("hashflags_settings_version", 0);
        if (a == 0 || a != d.i) {
            d.g();
            d.h();
            d.i = a;
        }
    }
}
