package defpackage;

import android.content.Context;
import android.os.Bundle;
import bso;
import btd;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.commerce.model.af;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bsp */
public class bsp extends b<bso> {
    private final af a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bsp(Context context, Session session, af afVar) {
        super(context, bsp.class.getName(), session);
        this.a = afVar;
    }

    protected d a() {
        String str = "phone_numbers";
        e a = K().a(RequestMethod.POST).b(new Object[]{"commerce", "phone_numbers"}).a("phone_number", this.a.a());
        btd.a(a, this.p);
        return a.a();
    }

    protected bso b() {
        return new bso();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bso bso) {
        if (httpOperation.k()) {
            aaVar.c.putBundle("create_contact_phone_number_bundle", (Bundle) bso.b());
        } else {
            btd.a(aaVar, bso);
        }
        aaVar.a(httpOperation);
    }
}
