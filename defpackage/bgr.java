package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;

/* compiled from: Twttr */
/* renamed from: bgr */
public class bgr extends bgm {
    private boolean b;

    protected /* synthetic */ c f() {
        return g();
    }

    public bgr(Context context, Session session, String str) {
        super(context, bgr.class.getName(), session, str);
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"device", "sms_verify_begin"});
        a(a);
        return a.a();
    }

    protected as g() {
        return as.a(86);
    }

    protected final void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.k()) {
            this.b = ((Boolean) asVar.b()).booleanValue();
        }
    }

    public boolean h() {
        return this.b;
    }
}
