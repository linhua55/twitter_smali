package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bgm */
public abstract class bgm extends b<as> {
    protected final String a;
    private int[] b;

    protected bgm(Context context, String str, Session session, String str2) {
        super(context, str, session);
        this.a = str2;
        if (aj.a(this.a)) {
            throw new IllegalArgumentException("Phone number is empty.");
        }
    }

    protected final void a(e eVar) {
        eVar.a("phone_number", this.a);
    }

    protected final void b(e eVar) {
        eVar.a("raw_phone_number", this.a);
    }

    public String b() {
        return this.a;
    }

    public int[] e() {
        return this.b;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k() || asVar == null) {
            this.b = null;
        } else {
            this.b = cd.a((cd) asVar.b());
        }
    }
}
