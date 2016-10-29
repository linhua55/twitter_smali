package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bpi */
public class bpi extends b<as> {
    private int[] a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bpi(Context context, Session session) {
        super(context, bpi.class.getName(), session);
        this.a = cd.b;
    }

    protected d a() {
        return K().a(RequestMethod.POST).a(new Object[]{"device", "unregister"}).a();
    }

    protected as b() {
        return as.a(90);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (!httpOperation.j()) {
            this.a = cd.a((cd) asVar.b());
        }
    }
}
