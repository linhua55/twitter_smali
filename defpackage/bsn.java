package defpackage;

import android.content.Context;
import android.os.Bundle;
import bsm;
import btd;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.commerce.model.m;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bsn */
public class bsn extends b<bsm> {
    private final m a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bsn(Context context, Session session, m mVar) {
        super(context, bsn.class.getName(), session);
        this.a = mVar;
    }

    protected d a() {
        String str = "contact_emails";
        e a = K().a(RequestMethod.POST).b(new Object[]{"commerce", "contact_emails"}).a("contact_email", this.a.a());
        btd.a(a, this.p);
        return a.a();
    }

    protected bsm b() {
        return new bsm();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bsm bsm) {
        if (httpOperation.k()) {
            aaVar.c.putBundle("create_contact_email_bundle", (Bundle) bsm.b());
        } else {
            btd.a(aaVar, bsm);
        }
        aaVar.a(httpOperation);
    }
}
