package tv.periscope.android.ui.broadcast;

import android.app.Activity;
import de.greenrobot.event.c;
import defpackage.dbx;
import java.util.concurrent.TimeUnit;
import tv.periscope.android.api.ApiManager;
import tv.periscope.android.api.EndReplayViewedResponse;
import tv.periscope.android.api.ReplayViewedResponse;
import tv.periscope.android.event.ApiEvent;
import tv.periscope.android.player.PlayMode;
import tv.periscope.android.player.d;
import tv.periscope.android.ui.broadcast.moderator.a;
import tv.periscope.android.ui.broadcast.moderator.b;
import tv.periscope.model.ac;
import tv.periscope.model.p;
import tv.periscope.model.u;

/* compiled from: Twttr */
public class ao extends au {
    private static final long h;
    private long i;
    private float j;

    static {
        h = TimeUnit.SECONDS.toMillis(10);
    }

    protected ao(Activity activity, ax axVar, ApiManager apiManager, c cVar, String str, dbx dbx, boolean z, ac acVar, String str2, a aVar, b bVar) {
        super(activity, axVar, apiManager, cVar, str, dbx, PlayMode.c, z, acVar, str2, aVar, bVar);
    }

    public void a() {
        p a = this.c.a(this.b);
        if (a != null) {
            a(a);
            if (a.E()) {
                a(a.c());
            }
        }
    }

    public void onEventMainThread(ApiEvent apiEvent) {
        super.onEventMainThread(apiEvent);
        switch (ap.a[apiEvent.a.ordinal()]) {
            case tv.periscope.android.library.p.View_android_focusable /*1*/:
                if (apiEvent.a()) {
                    this.f.b(((ReplayViewedResponse) apiEvent.d).session);
                }
            case tv.periscope.android.library.p.View_paddingStart /*2*/:
                if (apiEvent.a()) {
                    this.f.c(((EndReplayViewedResponse) apiEvent.d).session);
                }
            default:
        }
    }

    void a(ac acVar, u uVar) {
        p f = acVar.f();
        if (!f.D() || f.E()) {
            this.a.c(j());
            this.d.replayThumbnailPlaylist(f.c());
            return;
        }
        this.a.M();
    }

    void a(d dVar) {
        if (dVar.e() - dVar.d() < h) {
            this.a.M();
        }
    }

    public void d() {
        v();
        this.i = System.currentTimeMillis();
    }

    public void e() {
        v();
    }

    private void v() {
        this.j += (float) d(this.i);
        this.i = 0;
    }

    public void f() {
    }

    public void g() {
    }

    public void b(boolean z) {
        if (!z) {
            v();
        } else if (this.i == 0) {
            this.i = System.currentTimeMillis();
        }
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
