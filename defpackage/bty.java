package defpackage;

import android.content.Context;
import android.os.Bundle;
import btd;
import btw;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.aj;
import java.math.BigDecimal;

/* compiled from: Twttr */
/* renamed from: bty */
public class bty extends b<btw> {
    private final String a;
    private final String b;
    private final String c;
    private final String g;
    private final String h;
    private final String i;
    private final long j;
    private final long k;
    private final BigDecimal l;
    private final BigDecimal m;
    private final BigDecimal r;
    private final String s;
    private final String t;
    private final long u;
    private final long v;

    protected /* synthetic */ c f() {
        return b();
    }

    public bty(Context context, Session session, String str, String str2, String str3, String str4, String str5, String str6, long j, long j2, BigDecimal bigDecimal, BigDecimal bigDecimal2, BigDecimal bigDecimal3, String str7, String str8, long j3, long j4) {
        super(context, bsd.class.getName(), session);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.g = str4;
        this.h = str5;
        this.i = str6;
        this.k = j;
        this.j = j2;
        if (bigDecimal == null) {
            BigDecimal bigDecimal4 = new BigDecimal(0);
        }
        this.l = bigDecimal;
        if (bigDecimal2 == null) {
            bigDecimal4 = new BigDecimal(0);
        }
        this.m = bigDecimal2;
        if (bigDecimal3 == null) {
            bigDecimal4 = new BigDecimal(0);
        }
        this.r = bigDecimal3;
        this.s = str7;
        this.t = str8;
        this.u = j3;
        this.v = j4;
    }

    protected d a() {
        e a = K().a(RequestMethod.PUT).b(new Object[]{"commerce", "carts"}).b(new Object[]{this.a}).a("card_url", this.b).a("product_id", this.c).a("variant_id", this.g).a("payment_method_id", this.i).a("merchant_id", this.k).a("marketplace_id", this.j).a("amount_price", this.l.longValue()).a("amount_tax", this.m.longValue()).a("amount_shipping", this.r.longValue()).a("currency", this.s).a("nonce", this.t).a("tweet_id", this.u).a("viewed_at", this.v);
        if (aj.b(this.h)) {
            a.a("shipping_address_id", this.h);
        }
        btd.a(a, this.p);
        return a.a();
    }

    protected btw b() {
        return new btw();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, btw btw) {
        if (httpOperation.k()) {
            aaVar.c.putAll((Bundle) btw.b());
            aaVar.c.putBoolean("output_success", true);
        } else {
            aaVar.c.putBoolean("output_success", false);
            btd.a(aaVar, btw);
        }
        aaVar.a(httpOperation);
    }
}
