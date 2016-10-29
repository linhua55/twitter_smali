package defpackage;

import android.content.Context;
import beb;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.af;
import com.twitter.library.api.as;
import com.twitter.library.api.f;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.library.service.k;
import com.twitter.library.service.q;
import com.twitter.library.service.s;
import com.twitter.util.a;
import com.twitter.util.aj;
import java.util.Locale;

/* compiled from: Twttr */
/* renamed from: bod */
public class bod extends beb<as> {
    public String a;
    public String b;
    private String c;

    protected /* synthetic */ c f() {
        return e();
    }

    public bod(Context context, Session session) {
        super(context, bod.class.getName(), new ab(session), true);
        Locale locale = context.getResources().getConfiguration().locale;
        if (locale != null) {
            this.c = a.b(locale);
        }
        k v = super.v();
        if (v != null) {
            v.a(new q(1));
            if (com.twitter.config.c.a("retry_nux_and_login_verification_get_requests_2753", new String[]{"network_retry_active"})) {
                v.a(new s());
            }
            a(v);
        }
    }

    protected e b() {
        e b = K().a("i").b("users");
        if (aj.b(this.c)) {
            b.a("lang", this.c);
        }
        switch (M()) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return b.a("email_available").a("email", this.a);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return b.a("username_available").a("custom", 1).a("context", "signup").a("username", this.b);
            default:
                throw new UnsupportedOperationException("No action for code: " + M());
        }
    }

    protected as e() {
        return as.a(13);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k()) {
            f fVar = (f) asVar.b();
            if (!fVar.a) {
                aaVar.a(400, fVar.b);
            }
        }
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        if (!isCancelled()) {
            af.a(this.p, "app:twitter_service:account:availability_check", N().c, ((aa) abVar.b()).b(), abVar, false);
        }
    }
}
