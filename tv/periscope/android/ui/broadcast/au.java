package tv.periscope.android.ui.broadcast;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import de.greenrobot.event.c;
import defpackage.dbx;
import defpackage.dby;
import defpackage.dcj;
import defpackage.dcv;
import java.lang.ref.WeakReference;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.concurrent.TimeUnit;
import retrofit.RestAdapter.LogLevel;
import tv.periscope.android.api.ApiManager;
import tv.periscope.android.api.PsUser;
import tv.periscope.android.api.StartWatchingResponse;
import tv.periscope.android.chat.g;
import tv.periscope.android.event.ApiEvent;
import tv.periscope.android.library.p;
import tv.periscope.android.player.PlayMode;
import tv.periscope.android.player.a;
import tv.periscope.android.player.d;
import tv.periscope.android.player.e;
import tv.periscope.android.ui.broadcast.moderator.b;
import tv.periscope.android.ui.broadcast.moderator.i;
import tv.periscope.android.ui.chat.ag;
import tv.periscope.android.ui.chat.ai;
import tv.periscope.android.ui.chat.al;
import tv.periscope.android.ui.chat.am;
import tv.periscope.android.ui.chat.ao;
import tv.periscope.android.ui.chat.y;
import tv.periscope.android.ui.chat.z;
import tv.periscope.model.StreamType;
import tv.periscope.model.ac;
import tv.periscope.model.chat.MessageType.VoteType;
import tv.periscope.model.u;

/* compiled from: Twttr */
public abstract class au implements a, i {
    protected final ax a;
    protected final String b;
    protected final dbx c;
    protected final ApiManager d;
    protected final c e;
    protected final a f;
    protected final z g;
    private final PlayMode h;
    private final boolean i;
    private final WeakReference<Activity> j;
    private final Handler k;
    private boolean l;
    private ac m;
    private b n;
    private tv.periscope.android.ui.broadcast.moderator.a o;
    private final Runnable p;

    abstract void a();

    abstract void a(d dVar);

    abstract void a(ac acVar, u uVar);

    public static au a(Activity activity, PlayMode playMode, ax axVar, ApiManager apiManager, c cVar, String str, dbx dbx, boolean z, ac acVar, String str2, tv.periscope.android.ui.broadcast.moderator.a aVar, b bVar) {
        switch (aw.a[playMode.ordinal()]) {
            case p.View_android_focusable /*1*/:
                return new ar(activity, axVar, apiManager, cVar, str, dbx, z, acVar, str2, aVar, bVar);
            case p.View_paddingStart /*2*/:
            case p.View_paddingEnd /*3*/:
                return new ao(activity, axVar, apiManager, cVar, str, dbx, z, acVar, str2, aVar, bVar);
            default:
                return new aq(activity, axVar, apiManager, cVar, str, dbx, z, acVar, str2, aVar, bVar);
        }
    }

    public au(Activity activity, ax axVar, ApiManager apiManager, c cVar, String str, dbx dbx, PlayMode playMode, boolean z, ac acVar, String str2, tv.periscope.android.ui.broadcast.moderator.a aVar, b bVar) {
        this.k = new Handler(Looper.getMainLooper());
        this.p = new av(this);
        this.a = axVar;
        this.d = apiManager;
        this.e = cVar;
        this.b = str;
        this.c = dbx;
        this.h = playMode;
        this.i = z;
        this.f = new a(apiManager, acVar, playMode, activity);
        this.g = new z(activity, str2, playMode);
        this.o = aVar;
        this.g.a(this.o);
        this.j = new WeakReference(activity);
        this.n = bVar;
    }

    public void a(dby dby, boolean z, ai aiVar, ag agVar, tv.periscope.android.ui.chat.b bVar) {
        this.l = true;
        this.e.a((Object) this);
        this.e.a(this.o);
        this.g.a(dby, this.c, z, aiVar, agVar, bVar, this.b);
        if (bVar != null) {
            bVar.a(this.o);
        }
        a();
    }

    public y a(Resources resources, Handler handler, tv.periscope.android.chat.a aVar, at atVar, PsUser psUser, al alVar, d dVar, e eVar, am amVar, dby dby) {
        Resources resources2 = resources;
        Handler handler2 = handler;
        tv.periscope.android.chat.a aVar2 = aVar;
        d dVar2 = dVar;
        e eVar2 = eVar;
        PsUser psUser2 = psUser;
        y zVar = new z(resources2, handler2, this.d, aVar2, dVar2, eVar2, psUser2, new ao(25, 500, 4), atVar, amVar, dby, new dcj());
        zVar.a(alVar);
        this.g.a(zVar);
        this.f.a(zVar);
        return zVar;
    }

    protected PlayMode j() {
        return this.h;
    }

    public void k() {
        a(VoteType.c);
    }

    public void l() {
        a(VoteType.d);
    }

    public void m() {
        a(VoteType.b);
    }

    public void n() {
        this.n.c();
        this.o.b();
        this.k.postDelayed(this.p, 5000);
    }

    public void o() {
        this.n.d();
        this.o.a();
    }

    public void p() {
        this.k.removeCallbacks(this.p);
        this.n.a();
    }

    void a(VoteType voteType) {
        this.o.a(voteType);
        this.n.a(voteType);
    }

    void a(String str) {
        this.f.a(str);
    }

    void b() {
        this.f.a();
        this.g.b();
    }

    void c() {
        this.f.b();
        this.g.d();
    }

    void q() {
        this.g.c();
    }

    void a(dby dby, e eVar, g gVar, tv.periscope.android.chat.i iVar, boolean z) {
        this.g.a(dby, eVar, gVar, iVar, z);
    }

    boolean r() {
        return this.g.e();
    }

    void a(long j) {
        this.g.b(j);
    }

    void a(boolean z) {
        this.g.a(z);
    }

    void a(StreamType streamType, LogLevel logLevel, String str) {
        this.g.a(streamType, logLevel, str);
    }

    boolean s() {
        return this.g.h();
    }

    void c(long j) {
        this.g.a(j);
    }

    void t() {
        this.g.g();
    }

    protected long d(long j) {
        if (j != 0) {
            return TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis() - j);
        }
        return 0;
    }

    public void u() {
        this.g.f();
        if (this.l) {
            this.e.b(this);
            this.e.b(this.o);
            this.l = false;
        }
    }

    public void onEventMainThread(ApiEvent apiEvent) {
        switch (aw.b[apiEvent.a.ordinal()]) {
            case p.View_android_focusable /*1*/:
                if (apiEvent.a()) {
                    ac acVar = (ac) apiEvent.d;
                    if (this.i) {
                        acVar.a(StreamType.TooFull);
                    }
                    acVar = (ac) apiEvent.d;
                    tv.periscope.model.p f = acVar.f();
                    if (f.c().equals(this.b) && a(acVar)) {
                        this.a.a(acVar);
                        this.f.a(acVar, f, this.a.E());
                        this.m = acVar;
                        return;
                    }
                    return;
                }
                dcv.b("VC", "Failed to load broadcast " + apiEvent.e);
                if (apiEvent.c() == 404) {
                    this.a.a(404, apiEvent.b());
                } else {
                    this.a.a(1, apiEvent.b());
                }
            case p.View_paddingStart /*2*/:
                if (apiEvent.a()) {
                    u uVar = (u) apiEvent.d;
                    if (this.f.e(apiEvent.b)) {
                        this.a.a(uVar);
                        this.g.a(this.m.j(), uVar);
                        a(this.m, uVar);
                    }
                }
            case p.View_paddingEnd /*3*/:
                if (apiEvent.a()) {
                    this.f.b(((StartWatchingResponse) apiEvent.d).session);
                }
            default:
        }
    }

    private boolean a(ac acVar) {
        String c = acVar.c();
        if (c != null) {
            int[] i = acVar.i();
            if (i != null && i[0] > 0) {
                try {
                    String str;
                    URI uri = new URI(c);
                    if ("rtmps".equalsIgnoreCase(uri.getScheme())) {
                        str = "PSPS:";
                    } else {
                        str = "PSP:";
                    }
                    c = str + uri.getSchemeSpecificPart();
                } catch (URISyntaxException e) {
                }
            }
        }
        if (this.a.a(c, acVar.e(), acVar.d(), acVar.g()) || !acVar.f().E()) {
            return true;
        }
        this.a.a(2, null);
        return false;
    }

    protected void a(tv.periscope.model.p pVar) {
        this.a.a(pVar);
    }
}
