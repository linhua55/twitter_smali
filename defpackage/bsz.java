package defpackage;

import android.content.Context;
import android.os.Bundle;
import bsx;
import btd;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bsz */
public class bsz extends b<bsx> {
    private final String a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bsz(Context context, Session session, String str) {
        super(context, bsz.class.getName(), session);
        this.a = str;
    }

    protected d a() {
        e b = K().a(RequestMethod.GET).b(new Object[]{"offers", this.a});
        btd.a(b, this.p);
        return b.a();
    }

    protected bsx b() {
        return new bsx();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bsx bsx) {
        if (httpOperation.k()) {
            aaVar.c.putBundle("offer_details_bundle", (Bundle) bsx.b());
        } else {
            btd.a(aaVar, bsx);
        }
        aaVar.a(httpOperation);
    }
}
