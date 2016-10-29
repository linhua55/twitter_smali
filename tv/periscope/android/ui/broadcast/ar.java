package tv.periscope.android.ui.broadcast;

import android.app.Activity;
import de.greenrobot.event.c;
import defpackage.dbx;
import tv.periscope.android.api.ApiManager;
import tv.periscope.android.event.ApiEvent;
import tv.periscope.android.library.p;
import tv.periscope.android.player.PlayMode;
import tv.periscope.android.player.d;
import tv.periscope.android.ui.broadcast.moderator.a;
import tv.periscope.android.ui.broadcast.moderator.b;
import tv.periscope.model.ac;
import tv.periscope.model.r;
import tv.periscope.model.u;

/* compiled from: Twttr */
public class ar extends au {
    protected ar(Activity activity, ax axVar, ApiManager apiManager, c cVar, String str, dbx dbx, boolean z, ac acVar, String str2, a aVar, b bVar) {
        super(activity, axVar, apiManager, cVar, str, dbx, PlayMode.e, z, acVar, str2, aVar, bVar);
    }

    public void a() {
        this.d.getBroadcastSummary(this.b);
    }

    public void onEventMainThread(ApiEvent apiEvent) {
        switch (as.a[apiEvent.a.ordinal()]) {
            case p.View_android_focusable /*1*/:
                if (apiEvent.a()) {
                    a(this.c.a(((r) apiEvent.d).a().c()));
                    a(this.b);
                }
            default:
                super.onEventMainThread(apiEvent);
        }
    }

    void a(ac acVar, u uVar) {
        tv.periscope.model.p f = acVar.f();
        if (!f.C() && f.E()) {
            this.a.b(PlayMode.c);
        }
    }

    void a(d dVar) {
    }

    protected void b() {
    }

    protected void c() {
    }

    public void d() {
    }

    public void e() {
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
