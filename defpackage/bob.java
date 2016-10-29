package defpackage;

import android.content.Context;
import bnz;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: bob */
public class bob extends bnz<as> {
    private final String h;
    private String i;

    protected /* synthetic */ c f() {
        return b();
    }

    public bob(Context context, Session session, String str) {
        super(context, bny.class.getName(), session, true, "update");
        this.h = str;
    }

    protected d a() {
        return K().a(RequestMethod.b).a("graph", "app", "optout", "update").a("status", this.h).a();
    }

    protected as b() {
        return as.a(94);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            this.i = (String) asVar.b();
        }
    }

    public String g() {
        return this.i;
    }
}
