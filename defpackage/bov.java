package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.util.collection.n;

/* compiled from: Twttr */
/* renamed from: bov */
public class bov extends b<t<TwitterUser, cd>> {
    private final long a;
    private final int b;

    protected /* synthetic */ c f() {
        return b();
    }

    public bov(Context context, Session session, long j, int i) {
        super(context, bov.class.getName(), session);
        if (i == 1 || i == 2) {
            this.a = j;
            this.b = i;
            return;
        }
        throw new IllegalArgumentException("Unknown action.");
    }

    protected d a() {
        di S = S();
        e T = T();
        S.a(18, N().c, this.a, T);
        T.a();
        com.twitter.library.service.e a = K().a(RequestMethod.POST);
        Object[] objArr = new Object[2];
        objArr[0] = "friendships";
        objArr[1] = this.b == 1 ? "accept" : "deny";
        return a.a(objArr).a("user_id", String.valueOf(this.a)).a();
    }

    protected t<TwitterUser, cd> b() {
        return v.a(TwitterUser.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<TwitterUser, cd> tVar) {
        if (this.b == 1 && aaVar.b()) {
            Object obj = (TwitterUser) tVar.b();
            if (obj != null) {
                di S = S();
                e T = T();
                S.a(n.b(obj), N().c, 1, -1, null, null, true, T);
                T.a();
            }
        }
    }
}
