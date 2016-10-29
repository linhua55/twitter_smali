package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.x;

/* compiled from: Twttr */
/* renamed from: acw */
public class acw extends atn<Long, x<TwitterUser>, bpo> {
    private final Context a;
    private final Session b;

    public acw(Context context, Session session) {
        this.a = context;
        this.b = session;
    }

    protected x<TwitterUser> a(bpo bpo) {
        return x.b(bpo.a);
    }

    protected bpo a(Long l) {
        if (l != null) {
            return new bpo(this.a, this.b, l.longValue(), null);
        }
        throw new NullPointerException("Cannot query for user with null user ID");
    }
}
