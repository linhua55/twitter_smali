package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import java.util.Date;

/* compiled from: Twttr */
/* renamed from: bxu */
public class bxu extends b<t<cjr, cd>> {
    private final String a;
    private cjr b;

    protected /* synthetic */ c f() {
        return e();
    }

    public bxu(Context context, int i, long j) {
        this(context, "stickers", bg.a().c(), i, j);
    }

    protected bxu(Context context, String str, Session session, int i, long j) {
        super(context, str, session, i);
        this.a = ckq.a.format(new Date(j));
    }

    protected final d a() {
        return b().a();
    }

    protected e b() {
        return K().a(RequestMethod.a).a("stickerprovider", "invalid_stickers").a("since", this.a);
    }

    protected t<cjr, cd> e() {
        return v.a(cjr.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cjr, cd> tVar) {
        if (httpOperation.k() && tVar != null) {
            this.b = (cjr) tVar.b();
        }
    }

    public cjr g() {
        return this.b;
    }
}
