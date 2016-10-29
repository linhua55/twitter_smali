package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: boa */
public class boa extends bnz<as> {
    private String h;

    protected /* synthetic */ c f() {
        return b();
    }

    public boa(Context context, Session session) {
        super(context, boa.class.getName(), session, false, NotificationCompatApi21.CATEGORY_STATUS);
        k("Not triggered by a user action.");
    }

    protected d a() {
        return K().a(RequestMethod.GET).a(new Object[]{"graph", "app", "optout", NotificationCompatApi21.CATEGORY_STATUS}).a();
    }

    protected as b() {
        return as.a(94);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            this.h = (String) asVar.b();
        }
    }

    public String g() {
        return this.h;
    }
}
