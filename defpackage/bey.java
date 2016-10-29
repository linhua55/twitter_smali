package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.network.w;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.f;
import com.twitter.library.service.s;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: bey */
public class bey extends af<t<TwitterUser, cd>> {
    private final w b;
    private TwitterUser c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bey(Context context, Session session, w wVar) {
        super(context, bey.class.getName(), session);
        this.b = wVar;
        if (com.twitter.config.c.a("retry_nux_and_login_verification_get_requests_2753", "network_retry_active")) {
            a((f) new s());
        }
    }

    public bey(Context context, ab abVar, w wVar) {
        super(context, bey.class.getName(), abVar);
        this.b = wVar;
        if (com.twitter.config.c.a("retry_nux_and_login_verification_get_requests_2753", "network_retry_active")) {
            a((f) new s());
        }
    }

    protected d a() {
        return K().a(this.b).a(new Object[]{"account", "verify_credentials"}).a("include_user_entities", true).a();
    }

    public String e() {
        return "app:twitter_service:account:verify_credentials";
    }

    protected t<TwitterUser, cd> b() {
        return v.a(TwitterUser.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<TwitterUser, cd> tVar) {
        if (httpOperation.j()) {
            Object obj = (TwitterUser) tVar.b();
            this.c = (TwitterUser) e.a(obj);
            com.twitter.library.provider.e T = T();
            di.a(this.p, obj.c).a(n.b(obj), -1, -1, -1, null, null, true, T);
            T.a();
        }
    }

    public TwitterUser g() {
        return this.c;
    }
}
