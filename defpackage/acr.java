package defpackage;

import android.content.Context;
import bns;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.model.core.cm;
import com.twitter.model.core.u;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import java.util.Collection;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: acr */
public class acr extends atn<Collection<Long>, Map<Long, cm>, bns> {
    private final Context a;
    private final Session b;

    public acr(Context context, Session session) {
        this.a = context;
        this.b = session;
    }

    protected Map<Long, cm> a(bns bns) {
        Iterable e = bns.e();
        if (e != null) {
            return CollectionUtils.a(e, u.a());
        }
        return r.e();
    }

    protected bns a(Collection<Long> collection) {
        if (collection != null) {
            return new bns(this.a, this.b, n.a((Iterable) collection), new act(di.a(this.a, this.b.g()), null));
        }
        throw new NullPointerException("Cannot query for tweets with null tweet IDs");
    }
}
