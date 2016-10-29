package defpackage;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.twitter.config.AppConfig;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.ClientConfiguration;
import com.twitter.library.api.af;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.network.w;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.account.OAuthToken;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bdw */
public class bdw extends af<as> {
    private final String b;

    protected /* synthetic */ c f() {
        return b();
    }

    public bdw(Context context, Session session, String str) {
        super(context, bdw.class.getName(), session);
        this.b = str;
        k("Client config fetch is never triggered by a user action.");
    }

    protected d a() {
        OAuthToken oAuthToken = null;
        ab N = N();
        e a = K().b("mobile.twitter.com").a(null);
        if (N != null) {
            oAuthToken = N.d;
        }
        e a2 = a.a(new w(oAuthToken)).b("i", "config").a("client", "android");
        if (AppConfig.m().p() && aj.b(this.b)) {
            a2.a("carrier", this.b);
        }
        return a2.a();
    }

    protected as b() {
        return as.a(18);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.l().a == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
            aaVar.c.putParcelable("extra_settings", (ClientConfiguration) asVar.b());
        }
    }

    public String e() {
        return null;
    }
}
