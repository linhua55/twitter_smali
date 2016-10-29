package defpackage;

import android.content.Context;
import android.os.Bundle;
import bsq;
import btd;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.commerce.model.a;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bss */
public class bss extends b<bsq> {
    private final String a;
    private final String b;
    private final boolean c;
    private final boolean g;
    private final String h;
    private final a i;

    protected /* synthetic */ c f() {
        return b();
    }

    public bss(Context context, Session session, boolean z, boolean z2, String str, a aVar) {
        super(context, bss.class.getName(), session);
        this.c = z;
        this.a = "CONSUMER";
        this.b = "USD";
        this.g = z2;
        this.h = str;
        this.i = aVar;
    }

    protected d a() {
        String str = "payment_signatures";
        e a = K().a(RequestMethod.POST).b(new Object[]{"commerce", "payment_signatures"}).a("userId", N().c);
        if (this.g) {
            a.a("profileId", this.h);
            a.a("fullName", this.i.k()).a("street1", this.i.b()).a("street2", this.i.c()).a("city", this.i.e()).a("subdivision", this.i.f()).a("postalCode", this.i.g()).a("country", this.i.d());
        } else {
            a.a("accountType", this.a).a("currency", this.b);
            if (this.c) {
                a.a("commerceType", "offers");
            } else {
                a.a("commerceType", "buy_now");
            }
        }
        btd.a(a, this.p);
        return a.a();
    }

    protected bsq b() {
        return new bsq();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bsq bsq) {
        if (httpOperation.k()) {
            aaVar.c.putBundle("address_signature_bundle", (Bundle) bsq.b());
        } else {
            btd.a(aaVar, bsq);
        }
        aaVar.a(httpOperation);
    }
}
