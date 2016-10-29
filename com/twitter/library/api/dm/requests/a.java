package com.twitter.library.api.dm.requests;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.model.core.cd;
import com.twitter.model.dms.ar;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.object.e;
import defpackage.bgt;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* compiled from: Twttr */
public class a extends c<b> {
    public bgt a;
    private final String b;
    private final Set<Long> c;
    private int[] g;

    protected /* synthetic */ c f() {
        return e();
    }

    public a(Context context, Session session, String str, Set<Long> set) {
        super(context, a.class.getName(), session);
        this.g = new int[0];
        this.b = e.a(str);
        this.c = e.a(set);
    }

    protected com.twitter.library.service.e b() {
        return K().a(RequestMethod.b).a("dm", "conversation", this.b, "add_participants").a("participant_ids", aj.a(",", this.c)).a("request_id", UUID.randomUUID().toString()).a("dm_users", true);
    }

    protected b e() {
        return new b();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, b bVar) {
        com.twitter.library.provider.e T = T();
        if (httpOperation.k()) {
            this.a = (bgt) bVar.b();
            S().a(this.a, true, T);
            List<ar> list = this.a.a;
            if (!list.isEmpty()) {
                n d = n.d();
                for (ar arVar : list) {
                    d.c(Long.valueOf(arVar.a));
                }
                S().a(this.b, CollectionUtils.e((Collection) d.q()), T);
            }
            T.a();
            new f(this.p, N(), this.b).P();
            return;
        }
        this.g = cd.a((cd) bVar.c());
    }

    public int[] g() {
        return this.g;
    }
}
