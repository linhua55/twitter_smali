package defpackage;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import bgb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: bgf */
public class bgf extends b<t> {
    protected /* synthetic */ c f() {
        return b();
    }

    public bgf(Context context, Session session) {
        super(context, bgf.class.getName(), session);
    }

    protected d a() {
        return K().a(RequestMethod.POST).a(new Object[]{"contacts", "upload_and_match"}).a("opt_in_live_sync", true).a(bgb.a(null)).a();
    }

    protected t b() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t tVar) {
        super.a(httpOperation, aaVar, tVar);
        if (!httpOperation.k()) {
            buc.a(this.p, N().e, 0);
            LocalBroadcastManager.getInstance(this.p).sendBroadcast(new Intent("live_sync_opt_in_failure_broadcast"));
        }
    }
}
