package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.o;
import com.twitter.model.dms.Participant;
import com.twitter.model.dms.bb;
import com.twitter.model.dms.h;
import com.twitter.model.dms.j;
import com.twitter.util.al;
import com.twitter.util.collection.ar;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: bid */
public class bid extends o {
    private final String a;
    private final Set<Participant> b;

    public bid(Context context, Session session, String str, long[] jArr) {
        super(context, bid.class.getName(), session);
        long b = al.b();
        ar a = ar.a(jArr.length + 1);
        for (long a2 : jArr) {
            a.c(((bb) ((bb) new bb().a(a2)).b(b)).q());
        }
        a.c(((bb) ((bb) new bb().a(session.g())).b(b)).q());
        this.b = (Set) a.q();
        this.a = str;
    }

    protected void a() {
        b();
    }

    public void b() {
        s().a((h) new j().a(this.b.size() > 2 ? 1 : 0).a(this.b).c(this.a).c(0).q(), false);
    }
}
