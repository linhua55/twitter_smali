package defpackage;

import android.content.Context;
import btd;
import bte;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.commerce.model.r;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.ab;

/* compiled from: Twttr */
/* renamed from: btf */
public class btf extends b<bte> {
    private final String a;

    protected /* synthetic */ c f() {
        return b();
    }

    public btf(Context context, Session session, String str) {
        super(context, btf.class.getName(), session);
        this.a = str;
    }

    protected d a() {
        e b = K().b(new Object[]{"commerce", "purchases"}).b(new Object[]{this.a});
        btd.a(b, this.p);
        return b.a();
    }

    protected bte b() {
        return new bte();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bte bte) {
        if (httpOperation.k()) {
            ab.a(aaVar.c, "order_history_item", (r) bte.b(), r.a);
        } else {
            btd.a(aaVar, bte);
        }
        aaVar.a(httpOperation);
    }
}
