package defpackage;

import android.content.Context;
import bpg;
import com.twitter.android.mx;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.v;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cd;
import com.twitter.model.core.cg;
import tv.periscope.chatman.api.ControlMessage;

/* compiled from: Twttr */
/* renamed from: bln */
public class bln extends b<v<cg, cd>> {
    private final long a;
    private final long b;
    private final long c;
    private final int g;
    private final Context h;
    private final Session i;
    private TwitterUser j;

    protected /* synthetic */ c f() {
        return b();
    }

    public bln(Context context, Session session, long j, long j2, long j3, int i) {
        super(context, bln.class.getName(), session);
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.g = i;
        this.h = context;
        this.i = session;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST);
        bpg bpg = new bpg(this.h, this.i, this.b);
        bpg.P();
        this.j = bpg.b();
        if (this.j != null) {
            switch (this.g) {
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                    a.a(new Object[]{"lists", "members", "create"});
                    a.a("list_id", String.valueOf(this.c));
                    a.a("user_id", String.valueOf(this.b));
                    break;
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    a.a(new Object[]{"lists", "subscribers", "create"});
                    a.a("list_id", String.valueOf(this.c));
                    break;
                default:
                    throw new IllegalStateException("Unknown user type: " + this.g);
            }
        }
        return a.a();
    }

    protected v<cg, cd> b() {
        return v.a(cg.class);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, v<cg, cd> vVar) {
        if (httpOperation.j()) {
            cg cgVar = (cg) vVar.b();
            com.twitter.library.provider.e T = T();
            S().a(this.a, this.j, this.g, cgVar, T);
            T.a();
        }
    }
}
