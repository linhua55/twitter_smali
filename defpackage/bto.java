package defpackage;

import android.content.Context;
import btd;
import btp;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.commerce.model.am;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.ab;

/* compiled from: Twttr */
/* renamed from: bto */
public class bto extends b<btp> {
    protected /* synthetic */ c f() {
        return b();
    }

    public bto(Context context, Session session) {
        super(context, bto.class.getName(), session);
    }

    protected d a() {
        e b = K().a(RequestMethod.GET).b(new Object[]{"commerce", "profiles"});
        btd.a(b, this.p);
        return b.a();
    }

    protected btp b() {
        return new btp();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, btp btp) {
        if (httpOperation.k()) {
            ab.a(aaVar.c, "profile_bundle", (am) btp.b(), am.a);
        } else {
            btd.a(aaVar, btp);
        }
        aaVar.a(httpOperation);
    }
}
