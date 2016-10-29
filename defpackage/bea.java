package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.u;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.account.LoginVerificationRequest;
import com.twitter.model.core.cd;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bea */
public class bea extends b<t<List<LoginVerificationRequest>, cd>> {
    private List<LoginVerificationRequest> a;
    private int[] b;

    protected /* synthetic */ c f() {
        return g();
    }

    public bea(Context context, Session session) {
        super(context, bea.class.getName(), session);
    }

    public List<LoginVerificationRequest> b() {
        return this.a;
    }

    public int[] e() {
        return this.b;
    }

    protected t<List<LoginVerificationRequest>, cd> g() {
        return u.a(LoginVerificationRequest.class);
    }

    protected d a() {
        return K().a("account", "login_verification_request").a();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<List<LoginVerificationRequest>, cd> tVar) {
        if (httpOperation.j()) {
            List<LoginVerificationRequest> list = (List) tVar.b();
            String str = N().e;
            for (LoginVerificationRequest a : list) {
                a.a(str);
            }
            this.a = list;
            return;
        }
        this.b = cd.a((cd) tVar.c());
    }
}
