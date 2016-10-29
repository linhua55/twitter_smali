package defpackage;

import android.content.Context;
import bbn;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.library.util.InvalidDataException;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.util.collection.n;

/* compiled from: Twttr */
/* renamed from: bnp */
public class bnp extends b<as> {
    private final long a;
    private final Session b;
    private final boolean c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bnp(Context context, Session session, long j, boolean z) {
        super(context, bnp.class.getName(), session);
        this.a = j;
        this.b = session;
        this.c = z;
    }

    protected d a() {
        e a = K().a(RequestMethod.b);
        Object[] objArr = new Object[2];
        objArr[0] = "account";
        objArr[1] = this.c ? "pin_tweet" : "unpin_tweet";
        return a.a(objArr).a(TtmlNode.ATTR_ID, this.a).a();
    }

    protected as b() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        boolean b = aaVar.b();
        long j = N().c;
        if (b) {
            TwitterUser a = di.a(this.p, j).a(j);
            long j2 = this.c ? this.a : 0;
            if (a != null && a.M != j2) {
                TwitterUser twitterUser = (TwitterUser) new cp(a).e(j2).q();
                com.twitter.library.provider.e T = T();
                S().a(n.b(twitterUser), -1, -1, -1, null, null, true, T);
                T.a();
                if (this.b.g() == twitterUser.c) {
                    this.b.a(twitterUser);
                    return;
                }
                return;
            }
            return;
        }
        bbn.a(new InvalidDataException("Received null status."));
    }
}
