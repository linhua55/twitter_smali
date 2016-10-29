package defpackage;

import android.accounts.NetworkErrorException;
import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.as;
import com.twitter.library.api.timeline.ab;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.e;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.s;
import com.twitter.model.core.TwitterUser;
import rx.o;
import rx.subjects.a;

/* compiled from: Twttr */
/* renamed from: blx */
public class blx extends ab {
    private final String a;
    private final TwitterUser j;
    private final a<blw> k;
    private blw l;

    protected /* synthetic */ c f() {
        return e();
    }

    public blx(Context context, Session session, TwitterUser twitterUser, String str, int i) {
        super(context, blx.class.getName(), new com.twitter.library.service.ab(session), twitterUser, i);
        this.k = a.q();
        this.a = str;
        this.j = twitterUser;
        a(new k().a(new l(context)).a(new s()));
    }

    protected e h() {
        return super.h().a(RequestMethod.a).a("1.1").b("live_video").b("1").b(this.a).a("timeline");
    }

    public o<blw> s() {
        return this.k;
    }

    protected as e() {
        return as.a(45, this.j);
    }

    protected int g() {
        return 13;
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        super.a(httpOperation, aaVar, asVar);
        if (httpOperation.k()) {
            this.l = (blw) ((as) com.twitter.util.object.e.a(asVar)).b();
            this.k.b_(this.l);
            this.k.bs_();
        } else {
            this.k.a(new NetworkErrorException(aaVar.e()));
        }
        aaVar.a(httpOperation);
    }

    protected String t() {
        return String.valueOf(this.a);
    }
}
