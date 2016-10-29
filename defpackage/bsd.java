package defpackage;

import android.content.Context;
import bsb;
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
import java.math.BigDecimal;

/* compiled from: Twttr */
/* renamed from: bsd */
public class bsd extends b<bsb> {
    private final String a;
    private final String b;
    private final String c;
    private final String g;
    private final String h;
    private final long i;
    private final long j;
    private final BigDecimal k;
    private final BigDecimal l;
    private final BigDecimal m;
    private final String r;
    private final String s;
    private final long t;
    private final long u;

    protected /* synthetic */ c f() {
        return b();
    }

    public bsd(Context context, Session session, String str, String str2, String str3, String str4, String str5, long j, long j2, BigDecimal bigDecimal, BigDecimal bigDecimal2, BigDecimal bigDecimal3, String str6, String str7, long j3, long j4) {
        super(context, bsd.class.getName(), session);
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.g = str4;
        this.h = str5;
        this.j = j;
        this.i = j2;
        if (bigDecimal == null) {
            bigDecimal = new BigDecimal(0);
        }
        this.k = bigDecimal;
        if (bigDecimal2 == null) {
            BigDecimal bigDecimal4 = new BigDecimal(0);
        }
        this.l = bigDecimal2;
        if (bigDecimal3 == null) {
            bigDecimal4 = new BigDecimal(0);
        }
        this.m = bigDecimal3;
        this.r = str6;
        this.s = str7;
        this.t = j3;
        this.u = j4;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).b(new Object[]{"commerce", "purchases"}).a("card_url", this.a).a("product_id", this.b).a("variant_id", this.c).a("payment_method_id", this.h).a("merchant_id", this.j).a("marketplace_id", this.i).a("amount_price", this.k.longValue()).a("amount_tax", this.l.longValue()).a("amount_shipping", this.m.longValue()).a("currency", this.r).a("nonce", this.s).a("tweet_id", this.t).a("viewed_at", this.u);
        if (aj.b(this.g)) {
            a.a("shipping_address_id", this.g);
        }
        btd.a(a, this.p);
        return a.a();
    }

    protected bsb b() {
        return new bsb();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bsb bsb) {
        if (httpOperation.k()) {
            String str = (String) bsb.b();
            aaVar.c.putBoolean("output_success", true);
            aaVar.c.putString("auth_cart_id", str);
        } else {
            aaVar.c.putBoolean("output_success", false);
            btd.a(aaVar, bsb);
        }
        aaVar.a(httpOperation);
    }
}
