package defpackage;

import android.content.Context;
import bst;
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
/* renamed from: bsu */
public class bsu extends b<bst> {
    protected /* synthetic */ c f() {
        return b();
    }

    public bsu(Context context, Session session) {
        super(context, bsu.class.getName(), session);
    }

    protected d a() {
        e b = K().a(RequestMethod.DELETE).b(new Object[]{"commerce", "profiles"});
        btd.a(b, this.p);
        return b.a();
    }

    protected bst b() {
        return new bst();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bst bst) {
        if (httpOperation.k()) {
            aaVar.c.putBoolean("deleteprofile_success_boolean", true);
        } else {
            aaVar.c.putBoolean("deleteprofile_success_boolean", false);
            btd.a(aaVar, bst);
        }
        aaVar.a(httpOperation);
    }
}
