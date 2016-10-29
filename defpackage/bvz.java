package defpackage;

import bvy;
import com.twitter.config.d;

/* compiled from: Twttr */
/* renamed from: bvz */
class bvz implements Runnable {
    final /* synthetic */ bvy a;

    bvz(bvy bvy) {
        this.a = bvy;
    }

    public void run() {
        this.a.a(d.a("geo_data_provider_enabled"), d.a("geo_data_provider_google_play_services_enabled"), d.a("geo_data_provider_update_duration", -1), d.a("geo_data_provider_update_interval", -1));
    }
}
