package defpackage;

import android.content.Context;
import beb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.api.x;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bpe */
public class bpe extends beb<as> {
    private final String a;
    private String b;
    private final String c;
    private final String h;
    private x i;

    protected /* synthetic */ c f() {
        return g();
    }

    public bpe(Context context, Session session, String str, String str2, String str3) {
        this(context, new ab(session), str, str2, str3);
    }

    public bpe(Context context, ab abVar, String str, String str2, String str3) {
        super(context, bpe.class.getName(), abVar);
        this.h = str;
        this.a = str2;
        this.c = str3;
        if (aj.a(this.h)) {
            throw new IllegalArgumentException("Please provide password.");
        }
    }

    public x e() {
        return this.i;
    }

    protected e b() {
        e a = K().a(RequestMethod.b).a("account", "password_strength").a("password", this.h);
        String str = this.a;
        String str2 = this.c;
        String str3 = this.b;
        if (aj.b(str)) {
            a.a("name", str);
        }
        if (aj.b(str2)) {
            a.a("screen_name", str2);
        }
        if (aj.b(str3)) {
            a.a("email", str3);
        }
        return a;
    }

    protected as g() {
        return as.a(97);
    }

    protected final void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            this.i = (x) asVar.b();
        }
    }
}
