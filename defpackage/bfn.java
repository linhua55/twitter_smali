package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.model.av.n;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: bfn */
public abstract class bfn extends b<bfo> {
    private n a;

    protected /* synthetic */ c f() {
        return e();
    }

    protected bfn(Context context, String str, Session session) {
        super(context, str, session);
    }

    protected bfo e() {
        return new bfo();
    }

    protected void a(HttpOperation httpOperation, aa aaVar, bfo bfo) {
        super.a(httpOperation, aaVar, bfo);
        if (aaVar.b()) {
            this.a = (n) ((bfo) e.a(bfo)).b();
        }
    }

    public n g() {
        return this.a;
    }
}
