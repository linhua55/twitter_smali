package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bep */
public class bep extends b<as> {
    public final bej a;
    private int[] b;

    protected /* synthetic */ c f() {
        return e();
    }

    public bep(Context context, Session session, bej bej) {
        super(context, bep.class.getName(), session);
        this.a = bej;
    }

    public int[] b() {
        return this.b;
    }

    protected d a() {
        return K().a(RequestMethod.d).a("account", "login_verification_request").a("lv_id", this.a.a).a("challenge_response", this.a.b).a();
    }

    protected as e() {
        return as.a(43);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (!httpOperation.j()) {
            this.b = cd.a((cd) asVar.b());
        }
    }
}
