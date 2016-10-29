package defpackage;

import android.content.Context;
import bol;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;

/* compiled from: Twttr */
/* renamed from: bok */
public class bok extends af<t<TwitterUser, cd>> {
    private final long b;
    private final cni c;
    private int g;
    private final String h;
    private final di i;
    private final t<TwitterUser, cd> j;
    private final boolean k;

    protected /* synthetic */ c f() {
        return b();
    }

    public bok(Context context, Session session, long j, cni cni) {
        this(context, new ab(session), j, cni, false);
    }

    public bok(Context context, Session session, long j, cni cni, boolean z) {
        this(context, new ab(session), j, cni, z);
    }

    public bok(Context context, ab abVar, long j, cni cni, boolean z) {
        this(context, abVar, j, cni, di.a(context, abVar.c), v.a(TwitterUser.class), z);
    }

    public bok(Context context, ab abVar, long j, cni cni, di diVar, t<TwitterUser, cd> tVar, boolean z) {
        super(context, bok.class.getName(), abVar);
        this.b = j;
        this.c = cni;
        this.h = boh.a(j, abVar);
        a(new com.twitter.library.service.t());
        this.i = diVar;
        this.j = tVar;
        boolean z2 = this.c != null || z;
        this.k = z2;
    }

    protected t<TwitterUser, cd> b() {
        return this.j;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a(new Object[]{"friendships", "destroy"}).a("user_id", String.valueOf(this.b));
        if (this.c != null) {
            if (this.c.c != null) {
                a.a("impression_id", this.c.c);
            }
            if (this.c.c()) {
                a.a("earned", true);
            }
        }
        return a.a();
    }

    public Runnable c(AsyncOperation asyncOperation) {
        if (asyncOperation != null) {
            asyncOperation.cancel(false);
        }
        return new bol(this);
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        super.a((com.twitter.internal.android.service.ab) abVar);
        com.twitter.library.provider.e T = T();
        boolean U = U();
        long j = N().c;
        if (U) {
            this.i.b(this.b, 1, T, true, j);
            if (!this.k) {
                this.i.a(0, j, this.b, T);
            }
            if (boo.b()) {
                TwitterUser a = this.i.a(this.b);
                AsyncOperation bos = new bos(this.p, N());
                bos.a = a;
                b(bos);
            }
        } else {
            this.i.a(this.b, 1, T, true, j);
        }
        T.a();
    }

    public final bok a(int i) {
        this.g = i;
        return this;
    }

    public final long g() {
        return this.b;
    }

    public final int h() {
        return this.g;
    }

    public String e() {
        return "app:twitter_service:follow:delete";
    }

    protected String o() {
        return this.h;
    }
}
