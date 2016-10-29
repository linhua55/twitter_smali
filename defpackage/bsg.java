package defpackage;

import android.content.Context;
import android.os.Bundle;
import bse;
import btd;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.commerce.model.a;
import com.twitter.library.commerce.model.m;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bsg */
public class bsg extends b<bse> {
    private final a a;
    private final m b;
    private final String c;
    private final String g;
    private final String h;
    private final boolean i;
    private final String j;
    private final boolean k;
    private final boolean l;

    protected /* synthetic */ c f() {
        return b();
    }

    public bsg(Context context, Session session, a aVar, m mVar, String str, String str2, boolean z, boolean z2, boolean z3) {
        super(context, bsg.class.getName(), session);
        this.a = aVar;
        this.b = mVar;
        this.c = str;
        this.h = str2;
        this.i = z;
        this.l = z2;
        this.k = z3;
        this.g = "CONSUMER";
        this.j = "USD";
    }

    protected d a() {
        String str = this.a != null ? "addresses" : "payment_signatures";
        e a = K().a(RequestMethod.POST).b(new Object[]{"commerce", str}).a("is_default", this.i).a("with_signature", true).a("userId", N().c);
        if (!this.k) {
            a.a("accountType", this.g).a("currency", this.j);
            if (this.l) {
                a.a("commerceType", "offers");
            } else {
                a.a("commerceType", "buy_now");
            }
        }
        if (this.h != null) {
            a.a("profileId", this.h);
        }
        if (this.c != null) {
            a.a("postalCode", this.c);
        }
        if (this.a != null) {
            a.a("display_name", this.a.i()).a("full_name", this.a.k()).a("street1", this.a.b()).a("street2", this.a.c()).a("city", this.a.e()).a("subdivision", this.a.f()).a("postal_code", this.a.g()).a("country", this.a.d());
        }
        if (this.b != null) {
            a.a("contact_email", this.b.a());
        }
        btd.a(a, this.p);
        return a.a();
    }

    protected bse b() {
        return new bse();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bse bse) {
        if (httpOperation.k()) {
            aaVar.c.putBundle("address_signature_bundle", (Bundle) bse.b());
        } else {
            btd.a(aaVar, bse);
        }
        aaVar.a(httpOperation);
    }
}
