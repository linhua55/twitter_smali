package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.av.ab;
import com.twitter.model.core.cm;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: bpp */
public class bpp extends b<bpr> {
    final bpr a;
    List<ab> b;
    private final boolean c;
    private final boolean g;
    private final long[] h;
    private final long[] i;
    private final boolean j;
    private final boolean k;
    private final di l;

    protected /* synthetic */ c f() {
        return b();
    }

    public bpp(Context context, Session session, long[] jArr) {
        this(context, session, jArr, di.a(context, session.g()));
    }

    public bpp(Context context, Session session, long[] jArr, di diVar) {
        this(new bpq().a(context).a(session).a(jArr).a(diVar));
    }

    public bpp(bpq bpq) {
        super(bpq.a, bpp.class.getName(), bpq.b);
        this.c = bpq.c;
        this.g = bpq.d;
        this.h = bpq.e;
        this.i = bpq.f;
        this.j = bpq.g;
        this.k = bpq.h;
        this.l = bpq.i;
        this.a = new bpr();
        this.b = new ArrayList();
    }

    protected bpr b() {
        return new bpr();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bpr bpr) {
        super.a(httpOperation, aaVar, bpr);
        if (httpOperation.k()) {
            this.b = bpr.b();
            if (this.b != null) {
                for (ab b : this.b) {
                    for (cm cmVar : b.b()) {
                        this.l.a(cmVar, cmVar.C.c, null);
                    }
                }
            }
        }
    }

    public List<ab> e() {
        return this.b;
    }

    protected d a() {
        return g().a();
    }

    e g() {
        e a = K().a(RequestMethod.a).a("videos/suggestions");
        a.a("seed_status_ids", this.h);
        a.a("pc", this.c);
        a.a("allow_nsfw", this.g);
        if (this.i != null) {
            a.a("excluded_status_ids", this.i);
        }
        a.a("include_pro_video", true);
        a.a("include_consumer_video", true);
        a.a("include_vine", true);
        a.a("include_gif", this.j);
        a.a("include_periscope", this.k);
        return a.a("include_entities", true).b().a("include_media_features", true).a("include_user_entities", true).d();
    }
}
