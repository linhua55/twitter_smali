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
/* renamed from: bon */
public class bon extends b<as> {
    private int[] a;
    private bpl b;
    private final Boolean c;
    private final Boolean g;

    protected /* synthetic */ c f() {
        return g();
    }

    public bon(Context context, Session session, boolean z, boolean z2) {
        super(context, bon.class.getName(), session);
        this.a = cd.b;
        this.b = null;
        this.c = Boolean.valueOf(z);
        this.g = Boolean.valueOf(z2);
    }

    public int[] b() {
        return this.a;
    }

    public bpl e() {
        return this.b;
    }

    protected d a() {
        return K().a(RequestMethod.GET).a(new Object[]{"users", "email_phone_info"}).a("allow_unverified", this.c.booleanValue()).a("include_pending_email", this.g.booleanValue()).a();
    }

    protected as g() {
        return as.a(90);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            this.b = (bpl) asVar.b();
        } else {
            this.a = cd.a((cd) asVar.b());
        }
    }
}
