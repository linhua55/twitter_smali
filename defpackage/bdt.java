package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.account.a;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bdt */
public class bdt extends b<t<a, cd>> {
    private a a;
    private int[] b;
    private final boolean c;

    protected /* synthetic */ c f() {
        return b();
    }

    public bdt(Context context, Session session, boolean z) {
        super(context, "BackupCodeRequest", session);
        this.c = z;
    }

    protected d a() {
        e a = K().a("account", "backup_code");
        if (this.c) {
            a.a(RequestMethod.a);
        } else {
            a.a(RequestMethod.b);
        }
        return a.a();
    }

    protected t<a, cd> b() {
        return v.a(a.class);
    }

    public a e() {
        return this.a;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<a, cd> tVar) {
        if (httpOperation.k()) {
            this.a = (a) tVar.b();
        } else {
            this.b = cd.a((cd) tVar.c());
        }
    }
}
