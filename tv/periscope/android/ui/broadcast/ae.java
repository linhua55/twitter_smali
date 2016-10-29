package tv.periscope.android.ui.broadcast;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.widget.Toast;
import dbo;
import dbq;
import dce;
import de.greenrobot.event.c;
import defpackage.dbp;
import defpackage.dbx;
import defpackage.dby;
import defpackage.dcg;
import defpackage.dcv;
import defpackage.dcx;
import defpackage.dcy;
import defpackage.ddb;
import defpackage.ddg;
import java.lang.ref.WeakReference;
import java.util.List;
import retrofit.RestAdapter.LogLevel;
import tv.periscope.android.api.ApiManager;
import tv.periscope.android.api.PsUser;
import tv.periscope.android.chat.f;
import tv.periscope.android.chat.g;
import tv.periscope.android.chat.i;
import tv.periscope.android.event.ApiEvent;
import tv.periscope.android.event.CacheEvent;
import tv.periscope.android.exoplayer.player.UnsupportedDrmException;
import tv.periscope.android.library.PeriscopeException;
import tv.periscope.android.library.o;
import tv.periscope.android.player.PlayMode;
import tv.periscope.android.player.a;
import tv.periscope.android.player.d;
import tv.periscope.android.player.e;
import tv.periscope.android.ui.broadcast.moderator.b;
import tv.periscope.android.ui.broadcast.moderator.l;
import tv.periscope.android.ui.chat.ChatState;
import tv.periscope.android.ui.chat.ag;
import tv.periscope.android.ui.chat.ai;
import tv.periscope.android.ui.chat.al;
import tv.periscope.android.ui.chat.am;
import tv.periscope.android.ui.chat.x;
import tv.periscope.chatman.api.Occupant;
import tv.periscope.model.ac;
import tv.periscope.model.chat.Message;
import tv.periscope.model.p;
import tv.periscope.model.u;
import tv.periscope.model.v;

/* compiled from: Twttr */
class ae implements dbo, g, a, ac, ax, ag, ai, al, am {
    private static final tv.periscope.android.ui.broadcast.moderator.a l;
    private static final b m;
    private boolean A;
    private boolean B;
    private boolean C;
    private au D;
    private boolean E;
    private boolean F;
    private tv.periscope.android.chat.a G;
    private final WeakReference<Activity> H;
    private final Context I;
    private final c J;
    private final ApiManager K;
    private final String L;
    private final LogLevel M;
    private final boolean N;
    private final boolean O;
    private final i P;
    private f Q;
    private dbp R;
    private final Runnable S;
    private final Runnable T;
    private final Runnable U;
    protected tv.periscope.android.player.c a;
    protected ChannelView b;
    protected p c;
    protected String d;
    protected PsUser e;
    protected at f;
    protected d g;
    protected e h;
    protected boolean i;
    protected PlayMode j;
    protected final Handler k;
    private dby n;
    private dbx o;
    private final dce p;
    private ac q;
    private u r;
    private WeakReference<dbq> s;
    private boolean t;
    private boolean u;
    private long v;
    private int w;
    private Boolean x;
    private boolean y;
    private long z;

    static {
        l = new l();
        m = new af();
    }

    boolean k() {
        Activity activity = (Activity) this.H.get();
        return activity == null || activity.isFinishing();
    }

    Resources l() {
        return this.I.getResources();
    }

    c m() {
        return this.J;
    }

    ApiManager n() {
        return this.K;
    }

    ae a(String str) {
        this.d = str;
        return this;
    }

    ae a(PlayMode playMode) {
        b(playMode);
        return this;
    }

    ae a(dbq dbq) {
        this.s = new WeakReference(dbq);
        return this;
    }

    ae c(long j) {
        this.z = j;
        return this;
    }

    public ae(Activity activity, c cVar, ApiManager apiManager, String str, dby dby, dbx dbx, PsUser psUser, d dVar, e eVar, dce dce, dce dce2, tv.periscope.android.chat.a aVar, LogLevel logLevel, tv.periscope.android.player.c cVar2, at atVar, boolean z, boolean z2, i iVar) {
        this.E = false;
        this.k = new Handler(Looper.getMainLooper());
        this.S = new ag(this);
        this.T = new ah(this);
        this.U = new ai(this);
        this.H = new WeakReference(activity);
        this.I = activity.getApplicationContext();
        this.J = cVar;
        this.K = apiManager;
        this.L = str;
        this.n = dby;
        this.o = dbx;
        this.e = psUser;
        this.g = dVar;
        this.h = eVar;
        this.p = dce;
        this.a = cVar2;
        this.f = atVar;
        this.M = logLevel;
        this.O = z2;
        this.P = iVar;
        this.G = aVar;
        this.N = z;
        a(dce2);
    }

    protected void o() {
        if (this.g.f() && !this.F) {
            int n = this.g.n();
            if (!(!this.E && ddb.c(this.I) && (n == 4 || n == 0))) {
                if (this.a.b(n, 5000)) {
                    this.E = true;
                } else {
                    this.a.K();
                    return;
                }
            }
            this.k.removeCallbacks(this.S);
            this.k.postDelayed(this.S, 5000);
        }
    }

    protected final void p() {
        if (!this.C && !ddg.a(this.d)) {
            this.C = true;
            q();
        }
    }

    protected void q() {
        m().a((Object) this);
    }

    protected final void r() {
        if (this.C) {
            this.C = false;
            s();
        }
    }

    protected void s() {
        m().b(this);
    }

    private void a(dce dce) {
        this.D = new ad((Activity) this.H.get(), this, n(), m(), this.d, this.o, this.O, this, "tv.periscope.android.library/0.22 (1)", l, m);
        this.b = this.a.getChannelView();
        this.b.setImageLoader(dce);
        this.b.setChatMessageAdapter(new tv.periscope.android.ui.chat.e(this.I, t(), new tv.periscope.android.ui.chat.c(l(), this.e.username, this.e.id, true, this.N, new tv.periscope.android.ui.chat.b(this.n, this.d), dce)));
    }

    private void R() {
        Object a = this.D.a(l(), this.k, this.G, this.f, this.e, this, this.g, this.h, this, this.n);
        this.b.setSendCommentDelegate(a);
        this.b.setPunishmentStatusDelegate(a);
    }

    protected x t() {
        return null;
    }

    private void d(PlayMode playMode) {
        if (this.D != null) {
            this.D.u();
        }
        this.D = au.a((Activity) this.H.get(), playMode, this, n(), m(), this.d, this.o, this.O, this, "tv.periscope.android.library/0.22 (1)", l, m);
        R();
        this.D.a(this.n, false, (ai) this, (ag) this, null);
    }

    private void S() {
        this.a.N();
    }

    public void b(PlayMode playMode) {
        if (this.j != playMode) {
            dcv.e("PlayerHelper", "Switching to mode: " + playMode);
            this.j = playMode;
            if (this.d != null) {
                if (playMode == PlayMode.b) {
                    y();
                }
                d(playMode);
                T();
                U();
                V();
                p();
            }
        }
    }

    private void T() {
        switch (aj.a[this.j.ordinal()]) {
            case tv.periscope.android.library.p.View_android_focusable /*1*/:
                this.b.i();
                this.b.d();
                this.b.setChatState(ChatState.Connecting);
            case tv.periscope.android.library.p.View_paddingStart /*2*/:
            case tv.periscope.android.library.p.View_paddingEnd /*3*/:
            case tv.periscope.android.library.p.View_theme /*4*/:
                this.b.j();
                this.b.e();
            default:
        }
    }

    private void U() {
        this.g.a(this.I, this);
        if (this.j != null && this.j.autoPlay && (this.j == PlayMode.b || this.z == 0)) {
            this.g.a(0);
        }
        if (this.R == null) {
            this.R = new dbp(this.c, this.q, this.r, this.Q);
        }
        this.h.a(this.R);
    }

    public void u() {
    }

    public void v() {
    }

    public String j() {
        return null;
    }

    void c(boolean z) {
        if (this.j == PlayMode.b && this.c.C()) {
            y();
        } else if (z) {
            w();
        } else {
            x();
        }
    }

    void w() {
        this.a.P();
    }

    void x() {
        this.a.O();
    }

    void y() {
        this.a.R();
    }

    public void a(p pVar) {
        if (pVar != null && !pVar.equals(this.c) && this.j != null) {
            this.c = pVar;
            this.b.a(this.L, pVar.y());
            boolean z = !pVar.C() && pVar.E();
            e(z);
            c(false);
            if (!this.g.g()) {
                this.a.c(pVar.q());
            }
            if (this.j != PlayMode.b && this.j != PlayMode.d) {
                b(pVar);
            }
        }
    }

    private void e(boolean z) {
        if (this.x == null || this.x.booleanValue() != z) {
            this.x = Boolean.valueOf(z);
            if (this.j == PlayMode.b) {
                y();
            } else if (z) {
                this.a.Q();
            } else {
                this.a.R();
            }
        }
    }

    private void b(p pVar) {
        String b;
        if (pVar != null) {
            long A = pVar.A();
            Resources l = l();
            if (A == 0) {
                A = System.currentTimeMillis();
            }
            b = dcg.b(l, A);
        } else {
            b = dcg.b(l(), System.currentTimeMillis());
        }
        this.a.b(b);
    }

    private void V() {
        this.D.a(this.n, this.h, (g) this, this.P, this.g.m());
    }

    boolean z() {
        return this.D.r();
    }

    private boolean W() {
        return (this.q == null || this.r == null) ? false : true;
    }

    public void A() {
        this.D.t();
        a(false);
        if (z()) {
            this.r = null;
            this.q = null;
        }
        if (this.j == PlayMode.d) {
            this.j = PlayMode.c;
        }
    }

    public void B() {
        D();
        if (this.g.f()) {
            this.g.l();
        }
    }

    public void C() {
        X();
    }

    private void X() {
        Y();
        if (this.D != null) {
            this.D.u();
        }
        r();
        if (this.g.f()) {
            this.g.o();
        }
    }

    private void Y() {
        this.k.removeCallbacksAndMessages(null);
    }

    public void onEventMainThread(ApiEvent apiEvent) {
        switch (aj.b[apiEvent.a.ordinal()]) {
            case tv.periscope.android.library.p.View_android_focusable /*1*/:
                a(apiEvent);
            default:
        }
    }

    void a(ApiEvent apiEvent) {
        if (apiEvent.a() && this.d != null) {
            p a = this.o.a(this.d);
            if (a != null) {
                if (this.j == null) {
                    b(a.C() ? PlayMode.b : PlayMode.c);
                    p();
                } else if (this.j == PlayMode.b && this.g.h() && a.D()) {
                    dcv.e("PlayerHelper", "BroadcastPlayer is buffering but API told us it ended.");
                    M();
                    Z();
                }
            }
        }
    }

    private void Z() {
        this.k.removeCallbacks(this.U);
        this.B = false;
    }

    private void aa() {
        this.D.b();
    }

    public void D() {
    }

    public void a() {
        if (this.j != null && this.j.replayable && this.u) {
            this.u = false;
            F();
        }
    }

    public void a(boolean z) {
        if (this.g.g()) {
            this.g.a(z);
        }
        if (z) {
            this.D.q();
        } else {
            ac();
        }
    }

    public void b() {
        this.u = false;
        this.g.k();
        aa();
    }

    public void a(long j) {
        this.u = false;
        this.g.b(j);
        this.i = true;
    }

    public void c(PlayMode playMode) {
        this.D.a(this.q.j(), this.M, this.q.f().o());
        this.Q = new f(this.r.b());
        this.R = new dbp(this.c, this.q, this.r, this.Q);
        this.h.a(this.R);
        dbq ab = ab();
        if (ab != null) {
            ab.a(this);
        }
        if (this.j == PlayMode.d && Q()) {
            c(true);
            F();
        }
    }

    private dbq ab() {
        if (this.s != null) {
            return (dbq) this.s.get();
        }
        return null;
    }

    public boolean a(String str, String str2, String str3, List<v> list) {
        if (!this.g.f()) {
            return false;
        }
        if (this.O && ddg.b(str2)) {
            dcv.a("PlayerHelper", "Using FORCED HLS.");
            str = null;
        }
        boolean a = this.g.a(str, str2, str3, list);
        this.D.a(this.g.m());
        return a;
    }

    public boolean E() {
        return this.g.g();
    }

    public void a(ac acVar) {
        this.q = acVar;
        a(this.o.a(this.d));
        this.k.removeCallbacks(this.S);
        this.k.post(this.S);
    }

    public void a(u uVar) {
        this.r = uVar;
        d(uVar.d());
        this.b.a(this.e.getProfileUrlMedium(), dcy.b(l(), this.r.a()));
    }

    protected void d(boolean z) {
    }

    public void a(int i, String str) {
        dbq ab = ab();
        if (ab != null) {
            ab.a(new PeriscopeException(str));
        }
    }

    public void onEventMainThread(CacheEvent cacheEvent) {
        switch (aj.c[cacheEvent.ordinal()]) {
            case tv.periscope.android.library.p.View_android_focusable /*1*/:
                a(cacheEvent);
            default:
        }
    }

    void a(CacheEvent cacheEvent) {
        if (this.j != null) {
            a(this.o.a(this.d));
        }
    }

    void F() {
        if (!this.y) {
            if (W()) {
                this.y = true;
                if (!this.g.g()) {
                    this.g.a(this.z);
                }
                this.D.a(this.z);
                if (z() && this.z != 0) {
                    this.i = true;
                    return;
                }
                return;
            }
            this.a.a(l().getString(o.ps__loading));
        }
    }

    public void a(ChatState chatState) {
        this.b.setChatState(chatState);
    }

    public void a(int i, boolean z) {
        this.b.a(i, z);
    }

    public void b(int i, boolean z) {
        this.b.b(i, z);
    }

    public void a(Message message) {
        this.b.a(message);
    }

    public void a(Message message, OnClickListener onClickListener, OnClickListener onClickListener2) {
    }

    public void G() {
        this.b.f();
    }

    public void H() {
        this.b.g();
    }

    public void I() {
        this.b.h();
    }

    public void J() {
        this.b.b();
    }

    public void K() {
    }

    public void a(int i) {
        this.w = i;
        this.b.setParticipantCount(dcx.a(l(), (long) i, true));
    }

    public void a(List<Occupant> list) {
        this.b.setMutualCount(list.size());
    }

    public void b(List<Occupant> list) {
    }

    public void a(String str, int i, boolean z) {
    }

    public void b(int i) {
    }

    public void b(Message message) {
    }

    public int c() {
        return this.w;
    }

    public void L() {
        if (this.g.f()) {
            this.g.l();
        } else {
            e();
        }
    }

    public void M() {
        L();
    }

    public void f() {
        this.D.f();
        this.a.a(l().getString(o.ps__loading));
    }

    public void g() {
    }

    public void d() {
        aa();
        this.D.d();
        this.a.L();
        this.t = true;
        S();
        O();
    }

    public void e() {
        this.D.e();
        this.z = 0;
        this.y = false;
        ac();
        b(this.c);
        N();
        if (this.j == PlayMode.b) {
            this.c.a(true);
            b(PlayMode.c);
        }
        c(false);
    }

    public void h() {
        this.D.h();
        if (!this.A && this.t && !this.g.j() && !this.g.i()) {
            dcv.a("PlayerHelper", "Buffering detected.");
            this.k.postDelayed(this.T, 1000);
            this.A = true;
            if (!this.B) {
                this.k.postDelayed(this.U, 5000);
                this.B = true;
            }
        }
    }

    public void a(Exception exception) {
        if (exception instanceof UnsupportedDrmException) {
            Toast.makeText(this.I, "Unsupported DRM exception", 1).show();
        }
        this.D.a(exception);
    }

    public void b(long j) {
        this.D.b(j);
        if (this.i && this.D.s()) {
            this.i = false;
            this.b.c();
            this.D.c(j);
        }
    }

    public void i() {
    }

    private void ac() {
        if (!this.u) {
            this.u = true;
            this.D.c();
            if (this.j.replayable) {
                this.v = Math.max(this.v, this.h.d());
            }
        }
    }

    public void b(boolean z) {
        if (!k()) {
            this.D.b(z);
            this.v = Math.max(this.v, this.g.d());
            this.a.L();
            Z();
            if (this.j == null) {
                return;
            }
            if (this.j == PlayMode.b) {
                y();
            } else {
                e(this.j.replayable);
            }
        }
    }

    void N() {
        Object obj = 1;
        if (!k() && this.g.f()) {
            Object obj2 = (this.j == null || !this.j.replayable) ? null : 1;
            if (obj2 == null || !this.g.i()) {
                obj = null;
            }
            if (!this.g.g() || obj != null || this.g.j()) {
                if (obj != null) {
                    ad();
                } else if (this.g.j() && this.c != null) {
                    this.a.c(this.c.q());
                }
            }
        }
    }

    void O() {
        P();
    }

    void P() {
        if (this.j != null && this.j.replayable && this.g.i()) {
            this.g.k();
        }
    }

    private void ad() {
        if (this.g.f()) {
            float f;
            if (this.g.n() == 1) {
                f = 90.0f;
            } else if (this.g.n() == 3) {
                f = 270.0f;
            } else {
                f = 0.0f;
            }
            this.a.a(f);
        }
    }

    boolean Q() {
        return (this.q == null || TextUtils.isEmpty(this.q.d()) || this.c == null || !this.c.E()) ? false : true;
    }
}
