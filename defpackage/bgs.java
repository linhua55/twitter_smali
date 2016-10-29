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
/* renamed from: bgs */
public class bgs extends bgm {
    private String b;
    private boolean c;

    protected /* synthetic */ c f() {
        return g();
    }

    public bgs(Context context, Session session, String str) {
        super(context, bgr.class.getName(), session, str);
    }

    public bgs a(String str) {
        this.b = str;
        return this;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"device", "sms_verify_complete"}).a("pin", this.b);
        a(a);
        return a.a();
    }

    protected as g() {
        return as.a(87);
    }

    protected final void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.k()) {
            this.c = ((Boolean) asVar.b()).booleanValue();
        }
    }

    public boolean h() {
        return this.c;
    }
}
