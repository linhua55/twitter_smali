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

/* compiled from: Twttr */
/* renamed from: bng */
public class bng extends beb<as> {
    private final String a;
    private final String b;
    private boolean c;
    private int[] h;

    protected /* synthetic */ c f() {
        return g();
    }

    public bng(Context context, Session session, String str, String str2) {
        this(context, new ab(session), str, str2);
    }

    public bng(Context context, ab abVar, String str, String str2) {
        super(context, bng.class.getName(), abVar, true);
        this.h = cd.b;
        this.a = str;
        this.b = str2;
    }

    public int[] e() {
        return this.h;
    }

    protected e b() {
        return K().a(RequestMethod.POST).a(new Object[]{"signup", "sms_verify_complete"}).a("phone_number", this.a).a("pin", this.b);
    }

    protected as g() {
        return as.a(87);
    }

    protected final void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k()) {
            this.c = ((Boolean) asVar.b()).booleanValue();
        } else {
            this.h = cd.a((cd) asVar.b());
        }
    }
}
