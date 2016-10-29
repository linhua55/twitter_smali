package defpackage;

import android.content.Context;
import btd;
import btr;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bts */
public class bts extends b<btr> {
    private final String a;
    private final String b;
    private final long c;
    private final String g;
    private final long h;
    private final long i;

    protected /* synthetic */ c f() {
        return b();
    }

    public bts(Context context, Session session, String str, String str2, long j, String str3, long j2, long j3) {
        super(context, bts.class.getName(), session);
        this.a = str;
        this.b = str2;
        this.c = j;
        this.g = str3;
        this.h = j2;
        this.i = j3;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).b(new Object[]{"offers"}).a("card_url", this.a).a("offer_id", this.b).a("expiration_date", this.c).a("nonce", this.g).a("tweet_id", this.h).a("viewed_at", this.i);
        btd.a(a, this.p);
        return a.a();
    }

    protected btr b() {
        return new btr();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, btr btr) {
        if (httpOperation.k()) {
            aaVar.c.putBoolean("saveoffer_success_boolean", true);
        } else {
            aaVar.c.putBoolean("saveoffer_success_boolean", false);
            btd.a(aaVar, btr);
        }
        aaVar.a(httpOperation);
    }
}
