package defpackage;

import android.content.Context;
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
import com.twitter.model.core.cd;
import com.twitter.model.core.cg;
import tv.periscope.chatman.api.ControlMessage;

/* compiled from: Twttr */
/* renamed from: blu */
public class blu extends b<v<cg, cd>> {
    private final long a;
    private final long b;
    private final long c;
    private final int g;

    protected /* synthetic */ c f() {
        return b();
    }

    public blu(Context context, Session session, long j, long j2, long j3, int i) {
        super(context, blu.class.getName(), session);
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.g = i;
    }

    protected d a() {
        e a = K().a(RequestMethod.POST);
        switch (this.g) {
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                a.a(new Object[]{"lists", "members", "destroy"}).a("list_id", String.valueOf(this.c)).a("user_id", String.valueOf(this.b));
                break;
            case mx.UserView_actionButtonPaddingRight /*5*/:
                a.a(new Object[]{"lists", "subscribers", "destroy"}).a("list_id", String.valueOf(this.c));
                break;
            default:
                throw new IllegalStateException("Unknown user type: " + this.g);
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
            S().a(this.g, this.a, this.b, cgVar, T);
            T.a();
        }
    }
}
