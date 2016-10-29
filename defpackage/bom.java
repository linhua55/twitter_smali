package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.util.aj;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: Twttr */
/* renamed from: bom */
public class bom extends b<as> {
    private final long[] a;
    private final long b;

    protected /* synthetic */ c f() {
        return b();
    }

    public bom(Context context, Session session, long[] jArr) {
        super(context, bom.class.getName(), session);
        this.a = jArr;
        this.b = session.g();
    }

    protected d a() {
        return K().a(RequestMethod.POST).a(new Object[]{"friendships", "destroy_all"}).a("user_id", aj.a(this.a)).a();
    }

    protected as b() {
        return as.a(9);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.k()) {
            di a = di.a(this.p, this.b);
            e T = T();
            Iterator it = ((ArrayList) asVar.b()).iterator();
            while (it.hasNext()) {
                long longValue = ((Long) it.next()).longValue();
                a.b(longValue, 1, T);
                a.a(0, this.b, longValue, T);
                T.a();
            }
        }
    }
}
