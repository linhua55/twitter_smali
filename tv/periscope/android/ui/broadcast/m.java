package tv.periscope.android.ui.broadcast;

import android.app.Activity;
import dbq;
import dbr;
import java.lang.ref.WeakReference;
import retrofit.RestAdapter.LogLevel;
import tv.periscope.android.api.Constants;
import tv.periscope.android.api.PsUser;
import tv.periscope.android.chat.p;
import tv.periscope.android.library.c;
import tv.periscope.android.player.PlayMode;
import tv.periscope.android.player.b;
import tv.periscope.android.player.d;
import tv.periscope.android.player.e;

/* compiled from: Twttr */
public class m implements dbr {
    private static final PsUser a;
    private final c b;
    private final PsUser c;
    private WeakReference<Activity> d;
    private ae e;
    private boolean f;

    static {
        a = new PsUser();
        a.id = "";
        a.username = "";
        a.displayName = "";
    }

    public m(c cVar) {
        this(cVar, a);
    }

    public m(c cVar, PsUser psUser) {
        this.b = cVar;
        this.c = psUser;
    }

    public void a(Activity activity, String str, PlayMode playMode, b bVar, d dVar, e eVar, dbq dbq) {
        if (this.e != null) {
            if (!this.f) {
                this.e.B();
            }
            this.e.C();
        }
        this.d = new WeakReference(activity);
        a(str);
        this.e = a(activity, dVar, eVar, bVar.a()).a(str).a(playMode).a(dbq);
        this.f = false;
        if (playMode.replayable) {
            this.e.c(eVar.d());
        }
    }

    private ae a(Activity activity, d dVar, e eVar, tv.periscope.android.player.c cVar) {
        return new ae(activity, this.b.b(), this.b.c(), Constants.API_PROD_HOST, this.b.d(), this.b.e(), this.c, dVar, eVar, this.b.f(), this.b.h(), new p(), LogLevel.BASIC, cVar, null, true, false, null);
    }

    private void a(String str) {
        if (this.b.e().a(str) == null) {
            tv.periscope.model.p a = tv.periscope.model.p.z().a(str).f("").i("").a();
            a.a(true);
            this.b.e().a(str, a);
        }
    }

    public Activity a() {
        return (Activity) this.d.get();
    }

    public void b() {
        if (this.e != null) {
            this.e.u();
        }
    }

    public void c() {
        if (this.e != null) {
            this.e.v();
        }
    }

    public void d() {
        if (this.e != null) {
            this.e.A();
        }
    }

    public void e() {
        if (this.e != null) {
            this.e.B();
            this.f = true;
        }
    }

    public void f() {
        if (this.e != null) {
            this.e.C();
            this.e = null;
        }
    }
}
