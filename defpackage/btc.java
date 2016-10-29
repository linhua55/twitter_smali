package defpackage;

import android.content.Context;
import android.os.Bundle;
import bta;
import btd;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.aj;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: btc */
public class btc extends b<bta> {
    private final String a;
    private final long b;
    private final long c;
    private final String g;
    private final List<String> h;
    private final boolean i;
    private final boolean j;
    private final String k;

    protected /* synthetic */ c f() {
        return b();
    }

    public btc(Context context, Session session, String str, long j, long j2, String str2, List<String> list, boolean z, boolean z2, String str3) {
        super(context, btc.class.getName(), session);
        this.a = str;
        this.b = j;
        this.c = j2;
        this.g = str2;
        this.h = list;
        this.i = z;
        this.j = z2;
        this.k = str3;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).b(new Object[]{"commerce", "products"}).a("product_id", this.a).a("marketplace_id", this.b).a("merchant_id", this.c).a("card_url", this.g);
        if (this.i) {
            a.a("calculate_fees", "true");
        } else {
            a.a("calculate_fees", "false");
        }
        if (this.j) {
            a.a("allow_unconfirmed_email", "true");
        } else {
            a.a("allow_unconfirmed_email", "false");
        }
        if (aj.b(this.k)) {
            a.a("shipping_address_id", this.k);
        }
        for (String a2 : this.h) {
            a.a("variant_id", a2);
        }
        btd.a(a, this.p);
        return a.a();
    }

    protected bta b() {
        return new bta();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bta bta) {
        if (httpOperation.k()) {
            aaVar.c.putBundle("product_info_bundle", (Bundle) bta.b());
        } else {
            btd.a(aaVar, bta);
        }
        aaVar.a(httpOperation);
    }
}
