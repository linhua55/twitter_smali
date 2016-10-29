package defpackage;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.t;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.model.core.cp;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import com.twitter.util.m;

/* compiled from: Twttr */
/* renamed from: bpo */
public class bpo extends beb<t<cp, cd>> {
    public TwitterUser a;
    public cd b;
    private final long c;
    private final String h;

    protected /* synthetic */ c f() {
        return e();
    }

    public bpo(Context context, Session session, long j, String str) {
        this(context, new ab(session), j, str);
    }

    public bpo(Context context, ab abVar, long j, String str) {
        super(context, bpo.class.getName(), abVar);
        this.c = j;
        this.h = str;
        if (this.c == 0 && aj.a(this.h)) {
            throw new IllegalArgumentException("userId must be non-zero or screenName must be non-null. userId=" + this.c + ", screenName=" + this.h);
        }
    }

    protected e b() {
        e c = K().a(new Object[]{"users", "show"}).a("include_media_features", true).a("include_user_entities", true).a("send_error_codes", true).d().c();
        if (this.c == 0) {
            c.a("screen_name", this.h);
        } else {
            c.a("user_id", this.c);
        }
        return c;
    }

    protected t<cp, cd> e() {
        return v.a(cp.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, t<cp, cd> tVar) {
        if (httpOperation.j()) {
            cp cpVar = (cp) tVar.b();
            if (cpVar != null) {
                cpVar.d(m.b());
                Object obj = (TwitterUser) cpVar.q();
                com.twitter.library.provider.e T = T();
                S().a(n.b(obj), -1, -1, -1, null, null, true, T);
                T.a();
                if (N().c != obj.c) {
                    bot bot = new bot(this.p, N());
                    bot.a = obj.c;
                    if (bot.P().b()) {
                        cpVar.i(bot.b);
                    }
                }
                if (!obj.s || boo.f()) {
                    bos bos = new bos(this.p, N());
                    bos.a = obj;
                    if (bos.P().b()) {
                        cpVar.a(bos.b);
                    }
                }
                this.a = (TwitterUser) cpVar.q();
                return;
            }
            return;
        }
        this.b = (cd) tVar.c();
    }
}
