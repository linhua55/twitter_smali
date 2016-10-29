package defpackage;

import android.content.Context;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.af;
import com.twitter.library.api.as;
import com.twitter.library.api.f;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.library.service.s;
import com.twitter.library.service.x;
import com.twitter.util.a;
import com.twitter.util.aj;
import java.util.Locale;

/* compiled from: Twttr */
/* renamed from: boc */
public class boc extends af<as> {
    public String b;
    public String c;
    private String g;

    protected /* synthetic */ c f() {
        return b();
    }

    public boc(Context context, Session session) {
        super(context, boc.class.getName(), session);
        Locale locale = context.getResources().getConfiguration().locale;
        if (locale != null) {
            this.g = a.b(locale);
        }
        if (com.twitter.config.c.a("retry_nux_and_login_verification_get_requests_2753", new String[]{"network_retry_active"})) {
            a(new s());
        }
    }

    public String e() {
        return "app:twitter_service:account:availability_check";
    }

    protected d a() {
        e b = K().a("i").b("users");
        if (aj.b(this.g)) {
            b.a("lang", this.g);
        }
        switch (M()) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return b.a("email_available").a("email", this.b).a();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return b.a("username_available").a("custom", 1).a("context", "signup").a("username", this.c).a();
            default:
                throw new UnsupportedOperationException("No action for code: " + M());
        }
    }

    protected as b() {
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

    public static x a(Context context, Session session, int i, String str) {
        x xVar;
        if (!com.twitter.config.d.a("guest_auth_availability_check_enabled")) {
            boc boc = (boc) new boc(context, session).h(i);
            switch (i) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    boc.b = str;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    boc.c = str;
                    break;
                default:
                    break;
            }
        }
        xVar = (bod) new bod(context, session).h(i);
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                xVar.a = str;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                xVar.b = str;
                break;
        }
        return xVar;
    }
}
