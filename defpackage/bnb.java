package defpackage;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bnb */
public class bnb extends bnc {
    public bnb(Context context, Session session) {
        super(context, bnb.class.getName(), session);
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"mutes/users/destroy"});
        a(a);
        return a.a();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<TwitterUser, cd> tVar) {
        if (httpOperation.j()) {
            TwitterUser twitterUser = (TwitterUser) tVar.b();
            di S = S();
            long j = twitterUser.c;
            com.twitter.library.provider.e T = T();
            S.a(26, N().c, j, T);
            S.a(38, N().c, j, T);
            S.b(j, (int) AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD, T);
            T.a();
            aaVar.c.putString("muted_username", twitterUser.k);
        }
    }

    public String e() {
        return null;
    }
}
