package tv.periscope.android.ui.broadcast;

import android.app.Activity;
import de.greenrobot.event.c;
import defpackage.dbx;
import defpackage.dby;
import defpackage.dcv;
import java.lang.ref.WeakReference;
import retrofit.RestAdapter.LogLevel;
import tv.periscope.android.chat.ChatRoomEvent;
import tv.periscope.android.chat.EventHistory;
import tv.periscope.android.chat.d;
import tv.periscope.android.chat.f;
import tv.periscope.android.chat.g;
import tv.periscope.android.chat.i;
import tv.periscope.android.chat.k;
import tv.periscope.android.chat.q;
import tv.periscope.android.library.p;
import tv.periscope.android.player.PlayMode;
import tv.periscope.android.player.e;
import tv.periscope.android.ui.broadcast.moderator.a;
import tv.periscope.android.ui.chat.ae;
import tv.periscope.android.ui.chat.ag;
import tv.periscope.android.ui.chat.ah;
import tv.periscope.android.ui.chat.ai;
import tv.periscope.android.ui.chat.ap;
import tv.periscope.android.ui.chat.b;
import tv.periscope.android.ui.chat.y;
import tv.periscope.model.StreamType;
import tv.periscope.model.u;

/* compiled from: Twttr */
public class z {
    ae a;
    private final d b;
    private PlayMode c;
    private y d;
    private WeakReference<Activity> e;
    private c f;
    private f g;
    private u h;
    private tv.periscope.android.chat.c i;
    private a j;
    private boolean k;

    public z(Activity activity, String str, PlayMode playMode) {
        this.e = new WeakReference(activity);
        this.f = new c();
        this.f.a((Object) this);
        this.b = d.a(str);
        this.c = playMode;
        this.d = new ap();
    }

    public void onEventMainThread(ChatRoomEvent chatRoomEvent) {
        Activity activity = (Activity) this.e.get();
        if (activity != null && !activity.isFinishing()) {
            a(chatRoomEvent);
        }
    }

    public void a(y yVar) {
        this.d = yVar;
        this.d.a(this.c);
        this.d.a(this.b);
    }

    public void a(dby dby, dbx dbx, boolean z, ai aiVar, ag agVar, b bVar, String str) {
        this.a = new ae(dby, dbx, z, str);
        this.a.a(aiVar);
        this.a.a(agVar);
        this.a.a((ah) a());
        this.f.a(this.a);
        if (bVar != null) {
            bVar.a(this.a);
        }
    }

    y a() {
        return this.d;
    }

    void b() {
        if (this.i != null) {
            this.i.d();
        }
    }

    void c() {
        if (this.i != null) {
            this.i.c();
        }
    }

    void d() {
        c();
        this.d.d();
    }

    void a(StreamType streamType, u uVar) {
        this.h = uVar;
        if (this.h != null) {
            this.d.a(streamType, uVar);
        }
    }

    boolean e() {
        return (this.g == null || this.h == null || !this.g.a(this.h.b())) ? false : true;
    }

    void a(a aVar) {
        this.j = aVar;
        if (this.j != null) {
            this.f.a(this.j);
        }
    }

    void f() {
        if (this.i != null) {
            this.i.a();
            this.i = null;
        }
        if (this.a != null) {
            this.a.a();
            this.f.b(this.a);
            this.a = null;
        }
        if (this.j != null) {
            this.f.b(this.j);
            this.j = null;
        }
        this.b.a();
        this.f.b(this);
    }

    void a(boolean z) {
        if (this.i != null) {
            this.i.a(z);
        }
    }

    void a(ChatRoomEvent chatRoomEvent) {
        switch (aa.a[chatRoomEvent.ordinal()]) {
            case p.View_android_focusable /*1*/:
                this.d.e();
            case p.View_paddingStart /*2*/:
                this.d.f();
            case p.View_paddingEnd /*3*/:
                this.d.g();
            case p.View_theme /*4*/:
                this.d.h();
            default:
        }
    }

    void a(StreamType streamType, LogLevel logLevel, String str) {
        if (this.g == null && this.h != null) {
            this.g = new f(this.h.b());
            dcv.e("CM", this.g.toString());
            this.d.a(this.g);
            this.b.a(this.f, this.h, streamType, this.c, logLevel);
            if (this.i != null) {
                this.i.a(this.g, this.h.b(), str, this.h.e());
            }
        }
    }

    void a(long j) {
        if (this.i != null) {
            this.i.a(j);
        }
    }

    void g() {
        c();
        this.g = null;
        this.d.a();
    }

    void b(long j) {
        if (this.i != null) {
            this.i.e();
        }
        if (e() && this.h != null) {
            this.k = false;
            this.b.a(this.g, this.h.e(), 0, "");
            if (j != 0) {
                c();
            }
        }
    }

    public void onEventMainThread(EventHistory eventHistory) {
        if (!this.k && 0 == eventHistory.a) {
            this.k = true;
        }
    }

    boolean h() {
        return this.k;
    }

    void a(dby dby, e eVar, g gVar, i iVar, boolean z) {
        if (this.i != null) {
            this.i.a();
        }
        switch (aa.b[this.c.ordinal()]) {
            case p.View_android_focusable /*1*/:
                this.i = new k(this.f, dby, eVar, gVar, iVar);
                this.i.b();
            default:
                this.i = new q(this.f, dby, this.b, eVar, z, iVar);
                this.i.b();
        }
    }
}
