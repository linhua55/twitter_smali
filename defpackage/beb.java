package defpackage;

import android.content.Context;
import bec;
import com.twitter.internal.android.service.ac;
import com.twitter.library.client.Session;
import com.twitter.library.network.a;
import com.twitter.library.network.h;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import java.util.Arrays;
import java.util.Collection;

/* compiled from: Twttr */
/* renamed from: beb */
public abstract class beb<T extends c> extends b<T> {
    private static final Collection<Integer> a;
    private boolean b;
    private a c;
    boolean g;
    private k h;

    protected abstract e b();

    static {
        a = Arrays.asList(new Integer[]{Integer.valueOf(401), Integer.valueOf(403)});
    }

    protected beb(Context context, String str, Session session) {
        this(context, str, new ab(session), false);
    }

    protected beb(Context context, String str, ab abVar) {
        this(context, str, abVar, false);
    }

    protected beb(Context context, String str, ab abVar, boolean z) {
        super(context, str, abVar);
        this.g = false;
        this.b = false;
        this.b = z;
        if (!abVar.b || z) {
            this.h = new k().a(new bec(this, context)).a(new l(context));
            a((ac) this.h);
        }
    }

    protected final boolean b(aa aaVar) {
        if (u() != null) {
            return c(aaVar);
        }
        aaVar.a(0, "Failed to obtain any auth for this request");
        return false;
    }

    protected boolean c(aa aaVar) {
        return true;
    }

    protected final d a() {
        return b().a(u()).a();
    }

    protected final a u() {
        if (!this.g) {
            if (this.b) {
                this.c = h.a(this.p);
            } else {
                this.c = h.a(this.p, N());
            }
            this.g = true;
        }
        return this.c;
    }

    protected k v() {
        return this.h;
    }
}
