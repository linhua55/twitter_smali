package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.aq;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: bgl */
public class bgl extends b<as> {
    private int a;

    protected /* synthetic */ c f() {
        return b();
    }

    public bgl(Context context, Session session) {
        super(context, bgl.class.getName(), session);
        this.a = 100;
    }

    protected d a() {
        return K().a("contacts", "uploaded_by").a("count", (long) this.a).a();
    }

    protected as b() {
        return as.a(21);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k()) {
            aq aqVar = (aq) asVar.b();
            if (aqVar != null) {
                Object b = aqVar.b();
                e T = T();
                int a = S().a(b, N().c, 7, -1, null, null, true, T);
                T.a();
                Bundle bundle = this.o;
                bundle.putInt("count", a);
                bundle.putInt("num_users", b.size());
            }
        }
    }
}
