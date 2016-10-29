package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.model.core.cp;
import com.twitter.model.core.p;
import com.twitter.util.collection.n;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
/* renamed from: bmz */
public class bmz extends af<t<cp, cd>> {
    public final long b;
    public final cni c;
    public boolean g;
    public TwitterUser h;
    public TwitterUser i;
    public String j;

    protected /* synthetic */ c f() {
        return b();
    }

    public bmz(Context context, Session session, long j, cni cni, int i) {
        super(context, bmz.class.getName(), session);
        this.b = j;
        this.c = cni;
        h(i);
        if (i == 1) {
            a(new com.twitter.library.service.t());
        }
    }

    protected d a() {
        e a = K().a(RequestMethod.POST).a("user_id", this.b);
        if (this.c != null) {
            if (this.c.c != null) {
                a.a("impression_id", this.c.c);
            }
            if (this.c.c()) {
                a.a("earned", true);
            }
        }
        switch (M()) {
            case WireMessage.WIRE_CHAT /*1*/:
                return a.a(new Object[]{"blocks", "create"}).a();
            case WireMessage.WIRE_CONTROL /*2*/:
                return a.a(new Object[]{"users", "report_spam"}).a("perform_block", this.g).a();
            case WireMessage.WIRE_AUTH /*3*/:
                return a.a(new Object[]{"blocks", "destroy"}).a();
            default:
                throw new IllegalArgumentException("Unknown action: " + M());
        }
    }

    public String e() {
        switch (M()) {
            case WireMessage.WIRE_CHAT /*1*/:
                return "app:twitter_service:block_user:create";
            default:
                return null;
        }
    }

    protected t<cp, cd> b() {
        switch (M()) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
            case WireMessage.WIRE_AUTH /*3*/:
                return v.a(cp.class);
            default:
                return null;
        }
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cp, cd> tVar) {
        di S = S();
        com.twitter.library.provider.e T = T();
        cp cpVar;
        switch (M()) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
                if (httpOperation.j()) {
                    Object obj;
                    cpVar = (cp) com.twitter.util.object.e.a(tVar.b());
                    if (M() != 2 || this.g) {
                        long j = N().c;
                        long d = cpVar.d();
                        cpVar.i(p.a(S.f(d), 4));
                        S.b(j, d, T);
                        obj = (TwitterUser) cpVar.q();
                        S.a(n.b(obj), j, 2, -1, null, null, true, T);
                        T.a();
                    } else {
                        TwitterUser twitterUser = (TwitterUser) cpVar.q();
                    }
                    this.h = (TwitterUser) com.twitter.util.object.e.a(obj);
                }
            case WireMessage.WIRE_AUTH /*3*/:
                if (httpOperation.j()) {
                    cpVar = (cp) com.twitter.util.object.e.a(tVar.b());
                    long j2 = this.b;
                    long j3 = N().c;
                    S.a(2, j3, j2, T);
                    S.a(37, j3, j2, T);
                    S.b(j2, 4, T);
                    T.a();
                    this.i = (TwitterUser) cpVar.q();
                }
            default:
        }
    }
}
