package defpackage;

import android.content.Context;
import bof;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.aq;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.util.collection.CollectionUtils;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: bow */
public class bow extends b<as> {
    private long[] a;
    private final int b;

    protected /* synthetic */ c f() {
        return b();
    }

    public bow(Context context, Session session, int i) {
        super(context, bow.class.getName(), session);
        this.b = i;
    }

    protected d a() {
        String a = S().a(1, 18, 0, this.b);
        e a2 = K().a(new Object[]{"friendships", "incoming"});
        if (a != null) {
            a2.a("cursor", a);
        }
        return a2.a();
    }

    protected as b() {
        return as.a(15);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k()) {
            di S = S();
            aq aqVar = (aq) asVar.b();
            Collection b = aqVar.b();
            if (!CollectionUtils.b(b)) {
                bof bof = new bof(this.p, N());
                long[] e = CollectionUtils.e(b);
                bof.a.a(e).a(true).a(18).a(-1).a(aqVar.a());
                bof.P();
                S.a(b, 32, null);
                this.a = e;
            }
        }
    }
}
