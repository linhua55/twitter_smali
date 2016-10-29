package com.twitter.library.api.timeline;

import android.content.Context;
import android.os.Bundle;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.core.cm;
import com.twitter.util.collection.n;
import defpackage.bbl;
import defpackage.bbn;
import defpackage.beb;

/* compiled from: Twttr */
public class ae extends beb<t<cm, cd>> {
    private final long a;

    protected /* synthetic */ c f() {
        return e();
    }

    public ae(Context context, Session session, long j) {
        super(context, ae.class.getName(), session);
        this.a = j;
    }

    protected final e b() {
        return K().a(new Object[]{"statuses", "show"}).a("id", this.a).a("include_entities", true).e().b().a("include_media_features", true).a("include_user_entities", true).d().c();
    }

    protected t<cm, cd> e() {
        return v.a(cm.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cm, cd> tVar) {
        if (httpOperation.k()) {
            Bundle bundle = aaVar.c;
            Object obj = (cm) tVar.b();
            if (obj != null) {
                bundle.putLong("status_id", obj.b);
                com.twitter.library.provider.e T = T();
                boolean z = obj.h() && obj.f();
                int size = S().a(n.b(obj), N().c, 10, -1, false, false, true, null, true, T, true, z).size();
                T.a();
                bundle.putInt("scribe_item_count", size);
                return;
            }
            bbn.a(new bbl().a("failed.status", Long.valueOf(this.a)).a(aaVar.c()));
        }
    }
}
