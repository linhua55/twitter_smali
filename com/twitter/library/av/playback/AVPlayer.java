package com.twitter.library.av.playback;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.VisibleForTesting;
import android.view.Surface;
import bdc;
import bpx;
import bxr;
import com.twitter.app.common.util.f;
import com.twitter.app.common.util.h;
import com.twitter.config.AppConfig;
import com.twitter.library.av.ai;
import com.twitter.library.av.e;
import com.twitter.library.av.l;
import com.twitter.library.av.n;
import com.twitter.library.av.r;
import com.twitter.library.av.s;
import com.twitter.library.av.v;
import com.twitter.library.client.bg;
import com.twitter.library.media.util.b;
import com.twitter.library.media.util.d;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.model.av.c;
import com.twitter.util.collection.x;
import com.twitter.util.j;
import com.twitter.util.m;
import com.twitter.util.math.Size;
import com.twitter.util.telephony.TelephonyUtil;
import defpackage.bbn;
import defpackage.bqk;
import java.lang.ref.WeakReference;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class AVPlayer implements OnCompletionListener, h, n, d {
    static final String a;
    static final String b;
    private static r n;
    private static m o;
    private final au A;
    private final ai B;
    private final aa C;
    private an D;
    private boolean E;
    private bg F;
    private aq G;
    private final ao H;
    private final v I;
    private final Bundle J;
    private boolean K;
    private float L;
    private boolean M;
    private com.twitter.library.av.model.parser.d N;
    volatile AVMediaPlaylist c;
    by d;
    WeakReference<Surface> e;
    Size f;
    final l g;
    boolean h;
    final at i;
    PlayerPauseType j;
    volatile bqk k;
    long l;
    boolean m;
    private final as p;
    private final k q;
    private final int[] r;
    private final bxr s;
    private final ay t;
    private final BroadcastReceiver u;
    private final b v;
    private boolean w;
    private int x;
    private float y;
    private final Context z;

    static {
        a = AVPlayer.class.getName() + ".IS_REPLAY";
        b = AVPlayer.class.getName() + ".HAS_SCRIBED_SHOW";
        o = m.a;
    }

    protected AVPlayer(ai aiVar, au auVar, Context context) {
        this(aiVar, auVar, context, new aa());
    }

    protected AVPlayer(ai aiVar, au auVar, Context context, aa aaVar) {
        this(aiVar, auVar, context, aaVar, new at());
    }

    protected AVPlayer(ai aiVar, au auVar, Context context, aa aaVar, at atVar) {
        this(aiVar, auVar, context, aaVar, new Handler(Looper.getMainLooper()), new ao(), new v(), o.a(context, auVar), atVar, new as(), l.a(context), new com.twitter.library.media.util.h(), new bc());
    }

    protected AVPlayer(ai aiVar, au auVar, Context context, aa aaVar, Handler handler, ao aoVar, v vVar, k kVar, at atVar, as asVar, l lVar, com.twitter.library.media.util.h hVar, bc bcVar) {
        this.d = new by();
        this.e = new WeakReference(null);
        this.f = Size.b;
        this.h = false;
        this.j = PlayerPauseType.b;
        this.k = bqk.a;
        this.r = new int[1];
        this.w = true;
        this.x = 100;
        this.y = 1.0f;
        this.J = new Bundle();
        this.K = false;
        this.N = com.twitter.library.av.model.parser.d.a;
        this.z = context.getApplicationContext();
        this.B = aiVar;
        this.C = aaVar;
        this.H = aoVar;
        this.I = vVar;
        this.A = auVar;
        this.p = asVar;
        this.v = hVar.a(this.z);
        this.g = lVar;
        this.q = kVar;
        this.t = bcVar.a(this, handler, context.getResources());
        this.i = atVar;
        this.i.a(this, this.t);
        this.g.a(this);
        this.s = new bxr();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        this.u = new ap(this, this.t);
        this.z.registerReceiver(this.u, intentFilter);
        this.p.c().c(new ak(this));
    }

    public au e() {
        return this.A;
    }

    public as f() {
        return this.p;
    }

    public AVMediaPlayer g() {
        return this.i.c();
    }

    public boolean h() {
        return this.k.e();
    }

    public Bundle i() {
        return this.J;
    }

    private void a(AVPlayerAttachment aVPlayerAttachment) {
        if (aVPlayerAttachment != null) {
            a(aVPlayerAttachment.b());
        }
    }

    public void a(s sVar) {
        AVMediaPlayer c = this.i.c();
        AVMediaPlaylist M = M();
        if (!this.f.c()) {
            sVar.a(this.f.a(), this.f.b());
        }
        if (u() || y()) {
            sVar.a(this.f.a(), this.f.b(), x(), false);
        } else if (x()) {
            sVar.f();
        } else if (v()) {
            if (!c.q()) {
                sVar.a(c.e(), c.f());
            }
        } else if (!(M == null || M.a())) {
            sVar.a(M.f());
        }
        if (!c.q()) {
            sVar.a(c.C());
        }
    }

    public void a(bg bgVar) {
        this.F = bgVar;
        this.G = new aq(this);
        if (this.F != null) {
            this.F.a(this.G);
        }
    }

    public void b() {
        this.i.c().s();
    }

    public void a() {
        this.i.c().b(false);
    }

    public void c() {
        this.x = 50;
        a(this.i.c());
    }

    public void d() {
        this.x = 100;
        a(this.i.c());
    }

    void a(AVMediaPlayer aVMediaPlayer) {
        aVMediaPlayer.a(b.a(100, Math.round(((float) V()) * this.y)));
    }

    private int V() {
        return this.M ? 0 : this.x;
    }

    protected AVMediaPlaylist a(Context context) {
        return W() ? M() : b(context);
    }

    private boolean W() {
        return M() != null;
    }

    protected void a(AVMediaPlaylist aVMediaPlaylist, Resources resources) {
        if (aVMediaPlaylist == null || !aVMediaPlaylist.a()) {
            c f = aVMediaPlaylist != null ? aVMediaPlaylist.f() : c.a(resources.getString(bdc.av_playlist_download_failed));
            a("error", f.c, null);
            this.t.a(f);
            return;
        }
        this.s.a();
        a(aVMediaPlaylist);
    }

    private AVMediaPlaylist b(Context context) {
        if (!this.J.getBoolean(b)) {
            this.J.putBoolean(b, true);
            a("show");
        }
        bpx f = this.A.c().f();
        return f != null ? f.a(context, this.A) : null;
    }

    public void a(am amVar) {
        AVMediaPlaylist M = M();
        int i = (M == null || M.a()) ? 0 : 1;
        if (this.D == null && M == null) {
            this.D = this.H.a(this, amVar);
            this.D.a(new Void[0]);
        } else if (i != 0 && amVar != null) {
            amVar.a(M.f());
        }
    }

    public void j() {
        if (this.D != null) {
            this.D.cancel(true);
            this.D.a();
            this.D = null;
        }
    }

    public void k() {
        if (!this.i.l()) {
            a(M(), this.z.getResources());
        }
    }

    protected void a(AVMediaPlaylist aVMediaPlaylist) {
        if (aVMediaPlaylist != null && aVMediaPlaylist.a()) {
            this.h = false;
            a("open", null, this.i.a(aVMediaPlaylist));
        }
    }

    public long l() {
        return a(false);
    }

    @VisibleForTesting
    long a(boolean z) {
        if (u()) {
            r();
        }
        long h = this.i.h();
        s m = m();
        if (m != null) {
            m.l();
        }
        return h;
    }

    protected s m() {
        AVPlayerAttachment a = this.p.a();
        return a != null ? a.d() : null;
    }

    public Surface n() {
        return (Surface) this.e.get();
    }

    protected void a(boolean z, boolean z2) {
        AVMediaPlaylist M = M();
        o();
        if (this.E) {
            f.a().b((h) this);
            this.E = false;
        }
        if (this.v != null) {
            this.v.b(this);
        }
        if (!(M == null || this.h)) {
            a("close");
            p();
        }
        boolean x = x();
        long a = a(z2);
        if (x) {
            a = 0;
        }
        this.l = a;
        if (z) {
            G();
        }
        if (!(this.F == null || this.G == null)) {
            this.F.b(this.G);
            this.G = null;
        }
        this.i.g();
        this.w = true;
        if (z2) {
            this.J.clear();
            this.k = bqk.a;
            this.l = 0;
            synchronized (this.r) {
                this.c = null;
            }
            if (!this.K) {
                try {
                    this.z.unregisterReceiver(this.u);
                } catch (Throwable e) {
                    bbn.a(e);
                    if (AppConfig.m().a()) {
                        throw e;
                    }
                }
                this.K = true;
            }
            this.g.b(this);
        }
        this.d = new by();
        j();
        this.s.c();
        this.h = true;
    }

    protected void o() {
        for (AVPlayerAttachment d : this.p.b()) {
            s d2 = d.d();
            if (d2 != null) {
                d2.k();
            }
        }
    }

    void p() {
        for (Entry entry : this.i.f().entrySet()) {
            AVMedia aVMedia = (AVMedia) entry.getKey();
            w wVar = (w) entry.getValue();
            if (wVar.c()) {
                a(aVMedia, Long.valueOf(wVar.b()));
            }
        }
    }

    void a(AVMedia aVMedia, Long l) {
        e a = a(this.z, "playback_lapse", null, aVMedia, m.b());
        a.b(l);
        this.q.a("AVPlayer.EVENT_LOG_ANALYTICS_EVENT", a.a());
    }

    public void a(Surface surface) {
        this.e = new WeakReference(surface);
        this.i.c().a(surface);
    }

    public boolean b(Surface surface) {
        if (surface != this.e.get()) {
            return false;
        }
        this.e = new WeakReference(null);
        this.i.c().a(null);
        return true;
    }

    public void b(boolean z) {
        if (v()) {
            this.i.h();
        }
        if (aa()) {
            if (!this.E) {
                f.a().a((h) this);
                this.E = true;
            }
            String str = "play";
            if (z) {
                this.J.putBoolean(a, true);
                str = "replay";
            } else if (this.i.c().t()) {
                str = "resume";
            } else {
                C();
            }
            this.B.a(this.A);
            a(str);
            if (!ae() || this.v.a(this)) {
                this.w = true;
                this.i.c().b(z);
            } else {
                X();
            }
        } else if (Z()) {
            c(true);
            a(M());
        } else if (Y()) {
            c(true);
            a(null);
        }
        if (!u() && !v() && !w()) {
            this.m = z;
            this.t.b(701, 0);
        }
    }

    private void X() {
        this.t.a(bdc.media_error_audio_focus_rejected, this.z.getString(bdc.media_error_audio_focus_rejected));
    }

    private boolean Y() {
        AVMediaPlaylist M = M();
        return !this.i.l() && (M == null || !M.a());
    }

    private boolean Z() {
        AVMediaPlaylist M = M();
        return (this.i.l() || M == null || !M.a()) ? false : true;
    }

    private boolean aa() {
        return this.i.l() && !this.i.c().r();
    }

    public PlayerPauseType q() {
        return this.j;
    }

    public void r() {
        a(PlayerPauseType.b);
    }

    public void a(PlayerPauseType playerPauseType) {
        this.j = playerPauseType;
        this.w = false;
        this.v.b(this);
        if (this.i.l()) {
            a("pause");
            this.i.c().s();
            return;
        }
        this.t.j();
    }

    public boolean s() {
        return this.i.l();
    }

    public boolean t() {
        return (Y() && this.D != null) || this.i.c().u();
    }

    public boolean u() {
        return this.i.c().r();
    }

    public boolean v() {
        return this.i.c().w();
    }

    public boolean w() {
        AVMediaPlaylist M = M();
        return (M == null || M.a()) ? false : true;
    }

    public boolean x() {
        return this.i.c().x();
    }

    public boolean y() {
        return this.i.c().t();
    }

    public void a(long j) {
        this.i.c().b(j);
    }

    public bd z() {
        return this.i.m();
    }

    public void A() {
        if (this.i.l()) {
            a("rewind");
        }
    }

    public void a(String str) {
        a(str, null, null, null);
    }

    public void a(String str, String str2) {
        a(str, str2, null, null);
    }

    public void a(String str, e eVar) {
        a(str, null, null, eVar);
    }

    public void a(String str, String str2, AVMedia aVMedia) {
        a(str, str2, aVMedia, null);
    }

    public void a(String str, String str2, AVMedia aVMedia, e eVar) {
        AVMedia D;
        Context context = this.z;
        if (aVMedia == null) {
            D = D();
        } else {
            D = aVMedia;
        }
        e eVar2 = eVar != null ? eVar : new e();
        a(context, str, str2, D, m.b(), eVar2);
        this.q.a("AVPlayer.EVENT_LOG_ANALYTICS_EVENT", eVar2.a());
        if ("playback_start".equals(str) && this.i.j()) {
            this.q.a("AVPlayer.EVENT_LOG_ANALYTICS_EVENT", a(context, "playlist_start", str2, D, m.b()).a());
        }
        this.q.a("AVPlayer.EVENT_PROMOTED_LOGGING_EVENT", eVar2.a());
    }

    protected e a(Context context, String str, String str2, AVMedia aVMedia, long j) {
        return a(context, str, str2, aVMedia, j, new e());
    }

    protected e a(Context context, String str, String str2, AVMedia aVMedia, long j, e eVar) {
        AVMediaPlaylist M = M();
        int i = context.getResources().getConfiguration().orientation;
        boolean z = this.M || this.y == 0.0f;
        this.d.a(str, M, eVar, j);
        eVar.a(context).a(P()).a(str).a(M).a(aVMedia).a(this.A.c().g()).a(i).a(z).b(ab()).b(str2).a(this.k).a(i());
        return eVar;
    }

    private int ab() {
        return (int) Math.floor(100.0d * ((double) U()));
    }

    public void a(bd bdVar) {
        this.t.a(bdVar);
    }

    public void B() {
        long k = this.i.k();
        if (k > 0) {
            e eVar = new e();
            eVar.c(Long.valueOf(k));
            a("video_ad_skip", null, null, eVar);
            ac();
        }
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        if (!this.i.a(ad())) {
            ac();
        }
    }

    private void ac() {
        AVMediaPlaylist M = M();
        if (M != null) {
            this.t.e();
            if (c(M) == null) {
                this.t.f();
                if (this.v != null) {
                    this.v.b(this);
                }
            }
        }
    }

    private AVMediaPlayer c(AVMediaPlaylist aVMediaPlaylist) {
        c(false);
        AVMediaPlayer c = this.i.c(aVMediaPlaylist);
        if (c != null) {
            a("open");
            a(c);
            this.t.b(701, 0);
            c.b(false);
            C();
        }
        return c;
    }

    void C() {
        if (ai.a()) {
            AVMedia D = D();
            AVMediaPlaylist M = M();
            if (D == null || M == null) {
                Throwable illegalStateException = new IllegalStateException("Player can't be started without setting a media and a playlist");
                bbn.a(illegalStateException);
                if (AppConfig.m().a()) {
                    throw illegalStateException;
                }
                return;
            }
            this.g.a(this.A, D, M);
        }
    }

    public AVMedia D() {
        return this.i.d();
    }

    public boolean E() {
        return this.w;
    }

    public void c(boolean z) {
        this.w = z;
    }

    public v F() {
        return this.I;
    }

    public void G() {
        this.I.a();
        if (this.e != null) {
            this.e.clear();
        }
    }

    public boolean H() {
        return this.i.i();
    }

    public r I() {
        return n;
    }

    public static void a(r rVar) {
        n = rVar;
    }

    public static void a(m mVar) {
        o = mVar;
    }

    public void J() {
        this.i.c().y();
    }

    public void K() {
        this.i.c().A();
    }

    public bqk L() {
        return this.k;
    }

    public AVMediaPlaylist M() {
        AVMediaPlaylist aVMediaPlaylist;
        synchronized (this.r) {
            aVMediaPlaylist = this.c;
        }
        return aVMediaPlaylist;
    }

    public void b(AVMediaPlaylist aVMediaPlaylist) {
        if (aVMediaPlaylist != this.c) {
            synchronized (this.r) {
                this.c = aVMediaPlaylist;
            }
        }
    }

    public void a(Activity activity) {
        if (!activity.isChangingConfigurations()) {
            r();
        }
    }

    public void b(Activity activity) {
    }

    public void N() {
        if (u()) {
            r();
        }
    }

    public Size O() {
        return this.f;
    }

    private boolean ad() {
        return this.k.a();
    }

    public TwitterScribeAssociation P() {
        AVPlayerAttachment a = this.p.a();
        return a != null ? a.f() : null;
    }

    @VisibleForTesting
    void a(bqk bqk) {
        if (bqk != this.k) {
            this.k = bqk;
            if (this.i.l()) {
                this.w = this.i.c().r();
            }
            d(bqk.b());
            a(this.i.c());
        }
    }

    aa Q() {
        return this.C;
    }

    public Context R() {
        return this.z;
    }

    public void a(float f) {
        this.y = f;
        a(this.i.c());
    }

    public void d(boolean z) {
        this.M = z;
        a(this.i.c());
        if (z) {
            this.v.b(this);
        } else if (af()) {
            this.v.a(this);
        }
    }

    public boolean S() {
        return this.M;
    }

    private boolean ae() {
        return !S() && af();
    }

    private boolean af() {
        return this.A.c().c() != 3;
    }

    public void bj_() {
    }

    private x<String> a(DynamicAd dynamicAd) {
        if (dynamicAd == null || !dynamicAd.a()) {
            return x.a();
        }
        return this.N.a(dynamicAd.c(), TelephonyUtil.i().e());
    }

    public void a(String str, DynamicAdInfo dynamicAdInfo) {
        if (this.A.c().a().equals(str)) {
            AVMediaPlaylist M = M();
            if (M != null && M.k() == null && M.i() == null) {
                x a = a(dynamicAdInfo.a);
                b(M.a(dynamicAdInfo, a));
                if (a.c()) {
                    this.i.b(M());
                }
            }
        }
    }

    public void b(float f) {
        boolean z = 0.0f <= f && f <= 1.0f;
        j.a(z, "visibility percentage must be 0 - 1.0! received: " + f);
        this.L = f;
    }

    public boolean T() {
        return U() >= 0.999f;
    }

    public float U() {
        return this.L;
    }
}
