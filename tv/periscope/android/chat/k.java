package tv.periscope.android.chat;

import de.greenrobot.event.c;
import defpackage.dby;
import defpackage.dcv;
import tv.periscope.android.library.p;
import tv.periscope.android.player.e;
import tv.periscope.model.chat.ChatEvent;
import tv.periscope.model.chat.Message;
import tv.periscope.model.chat.MessageType.ControlType;

/* compiled from: Twttr */
public class k implements c {
    private final c a;
    private final dby b;
    private m c;
    private g d;
    private String e;

    public k(c cVar, dby dby, e eVar, g gVar, i iVar) {
        this.a = cVar;
        this.b = dby;
        this.c = new m(eVar, cVar, iVar, this.b.a());
        this.d = gVar;
    }

    public void b() {
        this.c.start();
        this.a.a((Object) this);
    }

    public void c() {
    }

    public void d() {
    }

    public void a(long j) {
    }

    public void a() {
        this.a.b(this);
        if (this.c != null) {
            this.c.b();
            this.c = null;
        }
        this.d = null;
    }

    public void e() {
        this.c.c();
    }

    public void a(f fVar, String str, String str2, String str3) {
        this.e = str2;
    }

    public void a(boolean z) {
    }

    public void onEventMainThread(ChatEvent chatEvent) {
        Message a = chatEvent.a();
        if (this.b.a(a.c()) && a.b().controlType != ControlType.c) {
            dcv.a("ChatQueue", "Dropping message from blocked user: " + a.c());
        } else if (a.b().controlType != ControlType.c || this.e == null || this.e.equals(a.c())) {
            switch (l.a[a.b().ordinal()]) {
                case p.View_android_focusable /*1*/:
                    this.c.a(true);
                    this.c.c(a);
                case p.View_paddingStart /*2*/:
                case p.View_paddingEnd /*3*/:
                case p.View_theme /*4*/:
                case p.Toolbar_contentInsetStart /*5*/:
                case p.Toolbar_contentInsetEnd /*6*/:
                    this.c.d(a);
                case p.Toolbar_contentInsetLeft /*7*/:
                    if (this.d.c() <= 20 || this.b.b(a.c())) {
                        this.c.d(a);
                    }
                case p.Toolbar_contentInsetRight /*8*/:
                default:
                    this.c.c(a);
            }
        } else {
            dcv.d("ChatQueue", "Received broadcast message from non-broadcaster: " + a);
        }
    }
}
