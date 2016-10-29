package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bnf */
public class bnf extends beb<as> {
    private final String a;
    private boolean b;
    private int[] c;

    protected /* synthetic */ c f() {
        return g();
    }

    public bnf(Context context, Session session, String str) {
        this(context, new ab(session), str);
    }

    public bnf(Context context, ab abVar, String str) {
        super(context, bnf.class.getName(), abVar, true);
        this.c = cd.b;
        this.a = str;
        if (aj.a(this.a)) {
            throw new IllegalArgumentException();
        }
    }

    public int[] e() {
        return this.c;
    }

    protected e b() {
        return K().a("1.1").a(RequestMethod.POST).a(new Object[]{"signup", "sms_verify_begin"}).a("raw_phone_number", this.a);
    }

    protected as g() {
        return as.a(86);
    }

    protected final void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            this.b = ((Boolean) asVar.b()).booleanValue();
        } else {
            this.c = cd.a((cd) asVar.b());
        }
    }
}
