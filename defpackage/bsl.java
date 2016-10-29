package defpackage;

import android.content.Context;
import android.os.Bundle;
import bsh;
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
/* renamed from: bsl */
public class bsl extends b<bsh> {
    private final String a;
    private final long b;
    private final long c;
    private final String g;
    private final List<String> h;
    private final String i;

    protected /* synthetic */ c f() {
        return b();
    }

    public bsl(Context context, Session session, String str, long j, long j2, String str2, List<String> list, String str3) {
        super(context, btc.class.getName(), session);
        this.a = str;
        this.b = j;
        this.c = j2;
        this.g = str2;
        this.h = list;
        this.i = str3;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).b(new Object[]{"commerce", "carts"}).a("product_id", this.a).a("marketplace_id", this.b).a("merchant_id", this.c).a("card_url", this.g);
        if (aj.b(this.i)) {
            a.a("shipping_address_id", this.i);
        }
        for (String a2 : this.h) {
            a.a("variant_id", a2);
        }
        btd.a(a, this.p);
        return a.a();
    }

    protected bsh b() {
        return new bsh();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bsh bsh) {
        if (httpOperation.k()) {
            aaVar.c.putBundle("product_info_bundle", (Bundle) bsh.b());
        } else {
            btd.a(aaVar, bsh);
        }
        aaVar.a(httpOperation);
    }
}
