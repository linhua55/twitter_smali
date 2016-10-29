package tv.periscope.android.ui.chat;

import android.content.res.Resources;
import android.os.Handler;
import android.support.annotation.ColorInt;
import defpackage.dby;
import defpackage.dcf;
import defpackage.dci;
import defpackage.dcv;
import defpackage.dcy;
import tv.periscope.android.api.ApiManager;
import tv.periscope.android.api.PsUser;
import tv.periscope.android.chat.a;
import tv.periscope.android.chat.d;
import tv.periscope.android.chat.f;
import tv.periscope.android.library.p;
import tv.periscope.android.player.PlayMode;
import tv.periscope.android.player.e;
import tv.periscope.android.ui.broadcast.at;
import tv.periscope.model.StreamType;
import tv.periscope.model.chat.Message;
import tv.periscope.model.chat.MessageType;
import tv.periscope.model.u;

/* compiled from: Twttr */
public class z implements ah, y {
    u a;
    String b;
    StreamType c;
    private final Resources d;
    private final Handler e;
    private final ApiManager f;
    private d g;
    private final a h;
    private final tv.periscope.android.player.d i;
    private final e j;
    private final PsUser k;
    private final ao l;
    private final at m;
    private final am n;
    private final dby o;
    private final dci p;
    private al q;
    private PlayMode r;
    private f s;
    private int t;
    private int u;
    private int v;
    private boolean w;
    private boolean x;
    private final Runnable y;

    public z(Resources resources, Handler handler, ApiManager apiManager, a aVar, tv.periscope.android.player.d dVar, e eVar, PsUser psUser, ao aoVar, at atVar, am amVar, dby dby, dci dci) {
        this.w = true;
        this.y = new ac(this);
        this.d = resources;
        this.e = handler;
        this.f = apiManager;
        this.h = aVar;
        this.i = dVar;
        this.j = eVar;
        this.k = psUser;
        this.l = aoVar;
        this.m = atVar;
        this.n = amVar;
        this.o = dby;
        this.p = dci;
    }

    public void a(d dVar) {
        this.g = dVar;
    }

    public void a(al alVar) {
        this.q = alVar;
    }

    public void a() {
        this.q = null;
        this.r = null;
        this.a = null;
        this.s = null;
        this.b = null;
        d();
    }

    public void a(PlayMode playMode) {
        this.r = playMode;
    }

    public void a(StreamType streamType, u uVar) {
        this.c = streamType;
        this.a = uVar;
        j();
    }

    public void a(f fVar) {
        this.s = fVar;
    }

    public boolean a(MessageType messageType) {
        if (MessageType.Join == messageType) {
            if (i() && StreamType.LowLatency.equals(this.c)) {
                return true;
            }
            return false;
        } else if (this.i.f() && i() && StreamType.LowLatency.equals(this.c)) {
            return true;
        } else {
            return false;
        }
    }

    private boolean i() {
        return (this.s == null || this.a == null || !this.s.a(this.a.b())) ? false : true;
    }

    public int b() {
        return this.t;
    }

    public int c() {
        return this.v;
    }

    public void d() {
        this.t = 0;
        this.u = 0;
        this.v = 0;
    }

    public void e() {
        if (a(MessageType.Join)) {
            this.g.a(Message.a(this.k.username, this.k.displayName, this.k.initials, this.k.id, this.k.getProfileUrlMedium(), Integer.valueOf(this.a.a()), this.j.p(), dcf.b()));
            this.g.a(this.s);
        }
    }

    public void f() {
        if (this.q != null) {
            dcv.e("CM", "Chat State Changed: Connecting");
            this.q.a(ChatState.Connecting);
        }
    }

    public void g() {
        j();
    }

    public void h() {
    }

    private void j() {
        if (this.q != null) {
            switch (ad.a[this.c.ordinal()]) {
                case p.View_android_focusable /*1*/:
                    this.q.a(ChatState.Connected);
                    break;
                case p.View_paddingStart /*2*/:
                    this.q.a(ChatState.TooFull);
                    break;
                case p.View_paddingEnd /*3*/:
                    this.q.a(ChatState.Limited);
                    break;
                default:
                    this.q.a(ChatState.Connecting);
                    break;
            }
            dcv.e("CM", "State=" + this.c.name());
        }
    }

    public void a(String str) {
        if (this.q != null && a(MessageType.Chat)) {
            Message a = Message.a(str, this.k.username, this.k.displayName, this.k.initials, this.k.id, this.k.getProfileUrlMedium(), Integer.valueOf(this.a.a()), this.j.p(), dcf.b());
            if (this.b != null && this.h.a(this.b, str)) {
                b(a);
                dcv.e("CM", "ghosted identical message: " + str);
            } else if (this.x || !this.h.a(str)) {
                d(a);
            } else {
                this.q.a(a, new aa(this, a), new ab(this));
            }
        }
    }

    public void a(Message message) {
        b(message);
    }

    private void k() {
        if (this.q != null) {
            this.q.I();
        }
        this.e.removeCallbacks(this.y);
        this.w = false;
        this.e.postDelayed(this.y, 3000);
    }

    private void d(Message message) {
        if (message.m().length() < 4) {
            if (this.w) {
                k();
            } else {
                return;
            }
        }
        this.v++;
        b(message);
        this.n.K();
        this.p.a(message.f());
        if (a(MessageType.Chat)) {
            dcv.e("CM", "send chat #" + this.v);
            this.g.a(message);
        }
        this.b = message.m();
    }

    public void a(Message message, boolean z) {
        a(dcy.a(this.d, message.d().intValue()), z);
    }

    void a(@ColorInt int i, boolean z) {
        if (this.q != null && this.i.g()) {
            this.q.a(i, z);
        }
    }

    public void b(Message message, boolean z) {
        b(dcy.a(this.d, message.d().intValue()), z);
    }

    void b(@ColorInt int i, boolean z) {
        if (this.q != null && this.i.g()) {
            this.q.b(i, z);
        }
    }

    public void b(Message message) {
        if (this.q != null && this.i.g() && !this.p.b(message.f())) {
            this.q.a(message);
        }
    }

    public void c(Message message) {
        if (this.q != null) {
            this.q.J();
        }
    }
}
