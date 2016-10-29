package com.twitter.library.api.dm.requests;

import android.content.Context;
import big;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.ab;
import com.twitter.model.dms.a;
import com.twitter.util.aj;
import com.twitter.util.object.e;
import cym;
import defpackage.bia;
import defpackage.bkb;
import java.lang.ref.WeakReference;
import rx.o;

/* compiled from: Twttr */
public class f extends l {
    private final String a;
    private WeakReference<bkb> b;

    public f(Context context, Session session, String str) {
        super(context, session);
        this.a = e.a(str);
    }

    public f(Context context, ab abVar, String str) {
        super(context, abVar);
        this.a = e.a(str);
    }

    protected com.twitter.library.service.e b() {
        com.twitter.library.service.e b = super.b();
        if (big.b() && aj.b(this.a)) {
            b.a("active_conversation_id", this.a);
        }
        return b;
    }

    public void a(bkb bkb) {
        this.b = new WeakReference(bkb);
    }

    void a(bia bia, di diVar, com.twitter.library.provider.e eVar) {
        super.a(bia, diVar, eVar);
        if (this.b != null) {
            for (a aVar : bia.a()) {
                if (aVar.g() == 0) {
                    o.b(Long.valueOf(aVar.d())).a(cym.a()).c(new g(this));
                }
            }
        }
    }
}
