package defpackage;

import android.content.Context;
import beb;
import com.twitter.internal.android.service.ab;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.af;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.library.service.k;
import com.twitter.library.service.s;
import com.twitter.util.aj;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: beq */
public class beq extends beb<as> {
    private final String a;
    private final String b;
    private List<String> c;

    protected /* synthetic */ c f() {
        return e();
    }

    public beq(Context context, Session session, String str, String str2) {
        super(context, beq.class.getName(), session);
        this.a = str;
        this.b = str2;
        if (com.twitter.config.c.a("retry_nux_and_login_verification_get_requests_2753", new String[]{"network_retry_active"})) {
            k v = super.v();
            if (v != null) {
                v.a(new s());
                a(v);
            }
        }
    }

    protected e b() {
        e a = K().a("i").a("users", "suggest_screen_names");
        if (aj.b(this.a)) {
            a.a("email", this.a);
        }
        if (aj.b(this.b)) {
            a.a("full_name", this.b);
        }
        return a;
    }

    protected as e() {
        return as.a(29);
    }

    public void b(ab<aa> abVar) {
        a(abVar, true);
    }

    public void a(ab<aa> abVar) {
        a(abVar, false);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.j()) {
            this.c = (List) asVar.b();
        }
    }

    public List<String> g() {
        return this.c;
    }

    private void a(ab<aa> abVar, boolean z) {
        af.a(this.p, "app:twitter_service:account:suggest_screen_names", N().c, ((aa) abVar.b()).b(), abVar, z);
    }
}
