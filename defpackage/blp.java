package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.client.Session;
import com.twitter.library.provider.e;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;

/* compiled from: Twttr */
/* renamed from: blp */
public class blp extends b {
    private final long a;
    private final long b;

    public blp(Context context, Session session, long j, long j2) {
        super(context, blp.class.getName(), session);
        this.a = j;
        this.b = j2;
    }

    protected d a() {
        return K().a(RequestMethod.POST).a(new Object[]{"lists", "destroy"}).a("list_id", this.a).a();
    }

    protected c f() {
        return null;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, c cVar) {
        if (httpOperation.j()) {
            e T = T();
            S().d(this.b, this.a, T);
            T.a();
        }
    }
}
