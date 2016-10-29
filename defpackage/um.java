package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.library.client.Session;
import com.twitter.model.av.n;
import java.util.HashMap;
import java.util.Map;
import rx.o;
import ul;
import uo;

/* compiled from: Twttr */
/* renamed from: um */
public class um {
    private static um a;
    private final Map<Long, o<n>> b;
    private final ul c;

    public static um a(Context context) {
        if (a == null) {
            a = new um(context.getApplicationContext());
        }
        return a;
    }

    private um(Context context) {
        this(new ul(context));
    }

    @VisibleForTesting
    um(ul ulVar) {
        this.b = new HashMap();
        this.c = ulVar;
    }

    public o<n> a(Session session) {
        long g = session.g();
        if (!this.b.containsKey(Long.valueOf(g))) {
            this.b.put(Long.valueOf(g), a(session, null).e());
        }
        return (o) this.b.get(Long.valueOf(g));
    }

    public o<n> a(Session session, long j) {
        return a(session, Long.valueOf(j)).e();
    }

    private o<n> a(Session session, Long l) {
        return this.c.a(session).a_(l).g(new uo(null));
    }
}
