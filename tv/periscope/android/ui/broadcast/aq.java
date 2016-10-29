package tv.periscope.android.ui.broadcast;

import android.app.Activity;
import de.greenrobot.event.c;
import defpackage.dbx;
import java.util.ArrayList;
import tv.periscope.android.api.ApiManager;
import tv.periscope.android.player.PlayMode;
import tv.periscope.android.player.d;
import tv.periscope.android.ui.broadcast.moderator.a;
import tv.periscope.android.ui.broadcast.moderator.b;
import tv.periscope.model.ac;
import tv.periscope.model.p;
import tv.periscope.model.u;

/* compiled from: Twttr */
public class aq extends au {
    private long h;
    private long i;

    protected aq(Activity activity, ax axVar, ApiManager apiManager, c cVar, String str, dbx dbx, boolean z, ac acVar, String str2, a aVar, b bVar) {
        super(activity, axVar, apiManager, cVar, str, dbx, PlayMode.b, z, acVar, str2, aVar, bVar);
    }

    public void a() {
        a(this.b);
        p a = this.c.a(this.b);
        if (a != null) {
            a(a);
        }
    }

    public void a(ac acVar, u uVar) {
        p f = acVar.f();
        if (!f.C() && f.E()) {
            this.a.b(PlayMode.c);
        } else if (f.D() && !f.E()) {
            this.a.M();
        }
        this.a.c(j());
    }

    void a(d dVar) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(this.b);
        this.d.getBroadcasts(arrayList);
    }

    public void d() {
        this.h = System.currentTimeMillis();
        this.i = 0;
    }

    public void e() {
        this.i = d(this.h);
    }

    public void f() {
    }

    public void g() {
    }

    public void b(boolean z) {
    }

    public void h() {
    }

    public void a(Exception exception) {
    }

    public void b(long j) {
    }

    public void i() {
    }
}
