package com.twitter.android.loggedoutpush;

import android.content.Context;
import boz;
import com.twitter.android.platform.OemIntentReceiver;
import com.twitter.internal.network.k;
import com.twitter.library.client.bg;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.library.service.ab;
import com.twitter.util.aj;
import com.twitter.util.w;

/* compiled from: Twttr */
public class h implements g {
    private final Context a;

    public h(Context context) {
        this.a = context;
    }

    public boolean a(d dVar, boolean z) {
        String str;
        if (aj.a(dVar.e())) {
            dVar.a("app_install_logged_state", aj.a(OemIntentReceiver.b(this.a)) ? "opened" : "oem");
        }
        boz c = new boz(this.a, new ab(bg.a().c())).a(15).b(w.b(this.a.getResources().getConfiguration().locale)).d(dVar.e()).a(dVar.a()).c(PushRegistration.b(this.a));
        if (z) {
            str = "delete";
        } else {
            str = "create";
        }
        k g = c.e(str).a().P().g();
        if (g == null || !g.a()) {
            return false;
        }
        return true;
    }
}
