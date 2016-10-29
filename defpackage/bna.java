package defpackage;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.library.service.t;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.model.core.cp;
import com.twitter.model.core.p;
import com.twitter.util.collection.n;

/* compiled from: Twttr */
/* renamed from: bna */
public class bna extends bnc {
    private long b;

    public bna(Context context, Session session) {
        super(context, bna.class.getName(), session);
        a(new t());
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"mutes/users/create"});
        a(a);
        if (this.b != 0) {
            a.a("expiry", String.valueOf(this.b));
        }
        return a.a();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, com.twitter.library.api.t<TwitterUser, cd> tVar) {
        if (httpOperation.j()) {
            TwitterUser twitterUser = (TwitterUser) com.twitter.util.object.e.a(tVar.b());
            long j = N().c;
            di S = S();
            com.twitter.library.provider.e T = T();
            S.a(twitterUser.c, (int) AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD, T);
            Object obj = (TwitterUser) new cp(twitterUser).i(p.a(S.f(twitterUser.c), AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD)).q();
            S.a(n.b(obj), j, 26, -1, null, null, true, T);
            if (!p.a(obj.S)) {
                S.c(j, obj.c, T);
            }
            T.a();
            aaVar.c.putString("muted_username", obj.k);
        }
    }

    public String e() {
        return "app:twitter_service:mute_user:create";
    }
}
