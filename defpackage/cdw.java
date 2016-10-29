package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.client.Session;
import com.twitter.library.provider.u;
import com.twitter.library.service.o;
import com.twitter.util.h;
import com.twitter.util.object.e;

/* compiled from: Twttr */
/* renamed from: cdw */
public class cdw extends o {
    private final long a;
    private final int b;
    private final boolean c;
    private final u g;

    protected cdw(Context context, Session session, long j, int i, boolean z, u uVar) {
        super(context, cdw.class.getName(), session);
        this.a = j;
        this.b = i;
        this.c = z;
        this.g = (u) e.b(uVar, u.a(s()));
        a(ExecutionClass.c);
    }

    @VisibleForTesting
    com.twitter.library.provider.e b() {
        return t();
    }

    protected void a() {
        com.twitter.library.provider.e b = b();
        this.g.a(this.a, this.b, this.c, b);
        b.a();
    }

    public static cdw a(Context context, Session session, long j, int i, boolean z) {
        return cdw.a(context, session, j, i, z, null);
    }

    static cdw a(Context context, Session session, long j, int i, boolean z, u uVar) {
        if (uVar != null) {
            h.d();
        }
        return new cdw(context, session, j, i, z, uVar);
    }
}
