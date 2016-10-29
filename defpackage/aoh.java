package defpackage;

import android.content.Context;
import aof;
import aoi;
import aoj;
import com.twitter.android.mx;
import com.twitter.platform.t;
import com.twitter.util.collection.MutableList;
import com.twitter.util.concurrent.c;
import com.twitter.util.concurrent.h;
import com.twitter.util.j;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: aoh */
public class aoh {
    private final Context a;
    private final Executor b;
    private final Executor c;
    private final t d;

    public aoh(Context context, Executor executor, Executor executor2, t tVar) {
        this.d = tVar;
        this.a = context.getApplicationContext();
        this.b = executor;
        this.c = executor2;
    }

    public <C> void a(Iterable<aof<C>> iterable, C c) {
        a((Iterable) iterable, (Object) c, null);
    }

    public <C> void a(Iterable<aof<C>> iterable, C c, aok aok) {
        List a = MutableList.a();
        if (aok != null) {
            aok.a();
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            aof aof = (aof) it.next();
            if (aof.b(this.a, c)) {
                int a2 = aof.a();
                switch (a2) {
                    case mx.View_android_theme /*0*/:
                        this.b.execute(new aoi(this, aof, c));
                        break;
                    case WireMessage.WIRE_CHAT /*1*/:
                        a.add(new c().a(this.c).a(new aoj(this, aof, c, aok)).a());
                        break;
                    case WireMessage.WIRE_CONTROL /*2*/:
                        a(aof, (Object) c, aok);
                        break;
                    default:
                        throw new IllegalStateException("Invalid priority " + a2);
                }
            }
        }
        if (!a.isEmpty()) {
            long b = this.d.b();
            boolean b2 = j.b();
            try {
                j.a(true);
                h.a(a);
                if (aok != null) {
                    aok.a(this.d.b() - b);
                }
            } finally {
                j.a(b2);
            }
        }
        if (aok != null) {
            aok.b();
        }
    }

    private <C> void a(aof<C> aof_C, C c, aok aok) {
        long b = this.d.b();
        aof_C.a(this.a, c);
        if (aok != null) {
            aok.a(aof_C, this.d.b() - b);
        }
    }
}
