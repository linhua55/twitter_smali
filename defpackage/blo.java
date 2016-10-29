package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.cd;
import com.twitter.model.core.cg;
import com.twitter.util.collection.n;

/* compiled from: Twttr */
/* renamed from: blo */
public class blo extends b<v<cg, cd>> {
    private final long a;
    private final long b;
    private final String c;
    private final String g;
    private final boolean h;

    protected /* synthetic */ c f() {
        return b();
    }

    private blo(Context context, Session session, long j, long j2, String str, boolean z, String str2) {
        super(context, blo.class.getName(), session);
        this.a = j;
        this.b = j2;
        this.c = str;
        this.h = z;
        this.g = str2;
    }

    public static blo a(Context context, Session session, long j, String str, boolean z, String str2) {
        return new blo(context, session, 0, j, str, z, str2);
    }

    public static blo a(Context context, Session session, long j, long j2, String str, boolean z, String str2) {
        return new blo(context, session, j, j2, str, z, str2);
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a("name", this.c);
        if (this.a == 0) {
            a.a(new Object[]{"lists", "create"});
        } else {
            a.a(new Object[]{"lists", "update"}).a("list_id", this.a);
        }
        a.a("mode", this.h ? "private" : "public");
        if (this.g != null) {
            a.a("description", this.g);
        }
        return a.a();
    }

    protected v<cg, cd> b() {
        return v.a(cg.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, v<cg, cd> vVar) {
        if (httpOperation.k()) {
            Object obj = (cg) vVar.b();
            com.twitter.library.provider.e T = T();
            S().a(n.b(obj), this.b, 0, null, false, T);
            T.a();
        }
    }
}
