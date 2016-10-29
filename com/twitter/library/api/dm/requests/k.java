package com.twitter.library.api.dm.requests;

import android.content.Context;
import biw;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.dms.ad;
import com.twitter.model.dms.bd;
import com.twitter.util.collection.CollectionUtils;
import java.util.Collection;

/* compiled from: Twttr */
public class k extends c<i> {
    public bd a;
    private final Collection<Long> b;
    private final Collection<String> c;
    private final long g;

    protected /* synthetic */ c f() {
        return e();
    }

    public k(Context context, Session session, Collection<String> collection) {
        this(context, session, null, collection);
    }

    public k(Context context, Session session, long[] jArr) {
        this(context, session, CollectionUtils.a(jArr), null);
    }

    public k(Context context, Session session, Collection<Long> collection, Collection<String> collection2) {
        super(context, k.class.getName(), session);
        this.b = collection;
        this.c = collection2;
        this.g = session.g();
    }

    protected e b() {
        e a = K().a("dm", "permissions").a("dm_users", true);
        if (!CollectionUtils.b(this.b)) {
            a.a("recipient_ids", CollectionUtils.e(this.b));
        }
        if (!CollectionUtils.b(this.c)) {
            a.a("recipient_screen_names", (String[]) this.c.toArray(new String[this.c.size()]));
        }
        return a;
    }

    protected i e() {
        return new i();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, i iVar) {
        if (httpOperation.k()) {
            this.a = (bd) iVar.b();
            com.twitter.library.provider.e T = T();
            Object<TwitterUser> obj = this.a.c;
            S().a(obj, -1, -1, -1, null, null, true, T);
            if (!CollectionUtils.b(obj)) {
                for (TwitterUser twitterUser : obj) {
                    ad adVar = (ad) this.a.a.get(Long.valueOf(twitterUser.c));
                    if (adVar == null) {
                        adVar = (ad) this.a.b.get(twitterUser.k.toLowerCase());
                    }
                    if (adVar != null) {
                        S().d(biw.a(this.g, twitterUser.c), !adVar.a, T);
                    }
                }
            }
            T.a();
        }
    }
}
