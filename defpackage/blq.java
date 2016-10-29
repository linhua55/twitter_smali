package defpackage;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;

/* compiled from: Twttr */
/* renamed from: blq */
public class blq extends x {
    private int a;
    private long b;
    private String c;
    private int g;

    public blq(Context context, Session session) {
        super(context, blq.class.getName(), session);
    }

    public blq a(int i) {
        this.a = i;
        return this;
    }

    public blq a(long j) {
        this.b = j;
        return this;
    }

    public blq a(String str) {
        this.c = str;
        return this;
    }

    public blq c(int i) {
        this.g = i;
        return this;
    }

    protected void a_(aa aaVar) {
        blr d = new blr(this.p, N()).a(0).c(this.a).a(this.b).a(this.c).a(false).d(this.g);
        aa P = d.P();
        if (P.b()) {
            P = new blr(this.p, N()).a(2).c(this.a).a(this.b).a(this.c).a(d.e()).d(this.g).P();
        }
        aaVar.a(P);
    }
}
