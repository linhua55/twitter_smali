package defpackage;

import android.content.Context;
import android.net.Uri;
import android.util.Pair;
import cmb;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: bzd */
class bzd extends b<as> {
    private final long a;
    private final byw b;
    private final Uri c;
    private final RequestMethod g;
    private cmb h;

    protected /* synthetic */ c f() {
        return g();
    }

    bzd(Context context, long j, byw byw, Uri uri, RequestMethod requestMethod) {
        super(context, bzd.class.getName(), bg.a().c());
        this.a = j;
        this.b = byw;
        this.c = uri;
        this.g = requestMethod;
    }

    public long b() {
        return this.a;
    }

    public cmb e() {
        return this.h;
    }

    public boolean a(Session session) {
        return N().a(session);
    }

    protected d a() {
        e b = K().a(this.g).a(null).c(this.c.getScheme()).b(this.c.getAuthority()).b(this.c.getPath());
        if (this.b != null) {
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                b.a((String) pair.first, (String) pair.second);
            }
        }
        return b.a();
    }

    protected as g() {
        return as.a(98);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.j()) {
            this.h = (cmb) asVar.b();
        }
    }
}
