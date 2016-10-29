package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import btd;
import btt;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.commerce.model.a;
import com.twitter.library.commerce.model.f;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.aj;
import java.util.ArrayList;

/* compiled from: Twttr */
/* renamed from: btv */
public class btv extends b<btt> {
    private final a a;
    private final a b;
    private f c;
    private String g;
    private final String h;
    private final String i;
    private final String j;
    private final boolean k;
    private final boolean l;

    protected /* synthetic */ c f() {
        return b();
    }

    public btv(Context context, Session session, a aVar, a aVar2, f fVar, String str, String str2, boolean z, boolean z2) {
        this(context, session, aVar, aVar2, str, str2, z, z2);
        this.c = fVar;
    }

    public btv(Context context, Session session, a aVar, a aVar2, String str, String str2, String str3, boolean z, boolean z2) {
        this(context, session, aVar, aVar2, str2, str3, z, z2);
        this.g = str;
    }

    protected btv(Context context, Session session, a aVar, a aVar2, String str, String str2, boolean z, boolean z2) {
        super(context, btv.class.getName(), session);
        this.a = aVar;
        this.h = str;
        this.i = str2;
        this.j = "CONSUMER";
        this.k = z;
        this.b = aVar2;
        this.l = z2;
    }

    protected d a() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.p);
        e a = K().a(RequestMethod.POST).b("pay.twitter.com").a("1");
        if (this.l) {
            a.b(new Object[]{"payments", "updateProfile"});
        } else {
            a.b(new Object[]{"payments", "storeProfile"});
        }
        a.a("signature", this.h).a("timestamp", this.i).a("userId", N().c);
        btd.a(a);
        if (!this.l) {
            a.a("currency", "USD").a("accountType", this.j);
            if (this.k) {
                a.a("commerceType", "offers");
            } else {
                a.a("commerceType", "buy_now");
            }
        }
        if (this.c != null) {
            if (aj.b(this.c.h())) {
                a.a("ccNumber", this.c.h());
            }
            if (this.c.g() != null) {
                a.a("ccCvv", this.c.g());
            }
            if (this.c.j() != null) {
                a.a("ccExpirationMonth", (long) this.c.j().intValue());
            }
            if (this.c.k() != null) {
                a.a("ccExpirationYear", (long) this.c.k().intValue());
            }
            if (this.c.f() != null) {
                a.a("postalCode", this.c.f());
            }
            if (this.l) {
                a.a("profileId", this.c.i());
            }
        }
        if (this.g != null) {
            a.a("profileId", this.g);
        }
        if (!(this.a == null || this.a.h() == null)) {
            a.a("externalAddressId", this.a.h());
        }
        if (this.b != null) {
            String k = this.b.k();
            String b = this.b.b();
            String c = this.b.c();
            String e = this.b.e();
            String f = this.b.f();
            String g = this.b.g();
            String d = this.b.d();
            if (k != null) {
                a.a("fullName", k);
            }
            if (b != null) {
                a.a("street1", b);
            }
            if (c != null) {
                a.a("street2", c);
            }
            if (e != null) {
                a.a("city", e);
            }
            if (f != null) {
                a.a("subdivision", f);
            }
            if (d != null) {
                a.a("country", d);
            }
            if (g != null) {
                a.a("postalCode", g);
            }
        }
        CharSequence string = defaultSharedPreferences.getString("debug_card_tpay_host_v2", null);
        if (aj.b(string)) {
            a.b(string);
        }
        return a.a();
    }

    protected btt b() {
        return new btt();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, btt btt) {
        if (httpOperation.k()) {
            Bundle bundle = (Bundle) btt.b();
            aaVar.c.putBundle("store_profile_bundle", bundle);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("commerce_bundle_errors");
            if (parcelableArrayList != null) {
                Bundle bundle2 = new Bundle();
                bundle2.putParcelableArrayList("commerce_bundle_errors", parcelableArrayList);
                aaVar.c.putBundle("commerce_error_list_bundle", bundle2);
            }
        } else {
            btd.a(aaVar, btt);
        }
        aaVar.a(httpOperation);
    }
}
