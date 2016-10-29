package tv.periscope.chatman;

import defpackage.dde;
import defpackage.ddg;
import defpackage.ddj;
import java.util.Collections;
import java.util.concurrent.BlockingDeque;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import retrofit.RestAdapter.LogLevel;
import tv.periscope.android.library.p;
import tv.periscope.chatman.api.ChatMessage;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.ControlMessage.Ban;
import tv.periscope.chatman.api.ControlMessage.Leave;
import tv.periscope.chatman.api.ControlMessage.Presence;
import tv.periscope.chatman.api.HistoryRequest;
import tv.periscope.chatman.api.HttpClient;
import tv.periscope.chatman.api.HttpService;
import tv.periscope.chatman.api.WireMessage;
import tv.periscope.chatman.model.Roster;
import tv.periscope.model.chat.MessageType.SentenceType;

/* compiled from: Twttr */
public class a {
    private static final ScheduledExecutorService a;
    private final BlockingDeque<WireMessage> b;
    private final c c;
    private final tv.periscope.chatman.model.a d;
    private final HttpService e;
    private final b f;
    private final int g;
    private final String h;
    private int i;
    private int j;
    private volatile String k;
    private volatile boolean l;
    private volatile f m;
    private volatile e n;
    private int[] o;
    private HistoryRequest p;
    private ScheduledFuture q;

    static {
        a = new l(1);
    }

    private a(c cVar, tv.periscope.chatman.model.a aVar, int i, LogLevel logLevel, String str) {
        this.b = new LinkedBlockingDeque();
        this.f = new b(this);
        this.l = true;
        this.o = new int[0];
        this.c = cVar;
        this.d = aVar;
        this.e = new HttpClient(a, a, aVar.a(), logLevel, str).getService();
        this.l = true;
        this.g = i;
        this.h = str;
    }

    public static a a(c cVar, String str, String str2, int i, LogLevel logLevel, String str3) {
        if (ddg.a((CharSequence) str) || ddg.a((CharSequence) str2)) {
            throw new IllegalArgumentException("accessToken=" + str + ", endpoint=" + str2);
        }
        return new a(cVar, tv.periscope.chatman.model.a.a(str2, str), i, logLevel, str3);
    }

    public void a() {
        if (!this.l) {
            ddj.e("CM", "no leave sent. already disconnected");
        }
        c(this.k);
        c();
    }

    private void c() {
        if (this.l) {
            ddj.e("CM", "kill client");
            this.l = false;
            d();
            if (this.n != null) {
                this.n.b();
                this.n = null;
                return;
            }
            return;
        }
        ddj.e("CM", "client already killed");
    }

    public void a(String str) {
        if ((this.g & 1) == 0) {
            ddj.e("CM", "connect not allowed: cap=" + this.g);
        } else if (this.m != null) {
            ddj.e("CM", "already connecting");
        } else if (this.n != null) {
            ddj.e("CM", "already connected");
        } else {
            this.m = f.a(this.d, str, a, this.f, this.h);
        }
    }

    private void a(ControlMessage controlMessage) {
        switch (controlMessage.bodyKind) {
            case p.View_paddingEnd /*3*/:
                this.c.a(Roster.b().a(Collections.unmodifiableList(((ControlMessage.Roster) dde.a.a(controlMessage.body, ControlMessage.Roster.class)).occupants)).a());
            case p.View_theme /*4*/:
                Presence presence = (Presence) dde.a.a(controlMessage.body, Presence.class);
                this.c.a(tv.periscope.chatman.model.Presence.c().a(presence.occupancy).b(presence.totalParticipants).a());
            case p.Toolbar_contentInsetRight /*8*/:
                Ban ban = (Ban) dde.a.a(controlMessage.body, Ban.class);
                this.c.a(tv.periscope.chatman.model.Ban.c().a(SentenceType.a(ban.banType)).a((int) TimeUnit.MILLISECONDS.convert(ban.duration, TimeUnit.NANOSECONDS)).a());
            default:
                ddj.g("CM", "Unknown control message, kind=?" + controlMessage.bodyKind);
        }
    }

    public void a(Object obj) {
        if (!this.l) {
            return;
        }
        if ((this.g & 4) == 0) {
            ddj.e("CM", "send not allowed: cap=" + this.g);
        } else if (this.k == null) {
            ddj.f("CM", "no room to send message");
        } else if (this.b.size() >= 100) {
            ddj.g("CM", "queue full, drop message: " + obj);
        } else {
            this.b.offer(WireMessage.create(new ChatMessage(this.k, dde.a.a(obj))));
        }
    }

    private void c(String str) {
        if (!this.l) {
            return;
        }
        if (this.k == null) {
            ddj.e("CM", "No room to leave. Never joined a room.");
        } else if ((this.g & 1) == 0) {
            ddj.e("CM", "leave room=" + str + " not allowed: cap=" + this.g);
        } else if (str.equals(this.k)) {
            ddj.e("CM", "queue leave room " + str);
            this.k = null;
            this.b.offer(WireMessage.create(ControlMessage.create(new Leave(str))));
            this.c.c(str);
        } else {
            ddj.e("CM", "leaveroom", new IllegalStateException("not in room=" + str + " to leave it"));
        }
    }

    public void b(String str) {
        if (!this.l) {
            return;
        }
        if ((this.g & 2) == 0) {
            ddj.e("CM", "roster read not allowed. cap=" + this.g);
        } else if (this.k == null) {
            ddj.f("CM", "roster message before joining a room");
        } else {
            this.b.offer(WireMessage.create(ControlMessage.create(new ControlMessage.Roster(str))));
        }
    }

    public void a(String str, long j, String str2) {
        if ((this.g & 2) == 0) {
            ddj.e("CM", "history read not allowed. cap=" + this.g);
        } else if (this.e != null && !ddg.a((CharSequence) str)) {
            synchronized (this.o) {
                if (!(this.q == null || this.q.isDone())) {
                    this.q.cancel(false);
                }
                this.p = new HistoryRequest(str, j, str2, Integer.valueOf(1000));
                this.q = a.schedule(new d(this, 5, 1000, 30000, this.p), 0, TimeUnit.MILLISECONDS);
            }
        }
    }

    private void d() {
        if (this.m != null) {
            this.m.a();
        }
    }

    boolean a(HistoryRequest historyRequest) {
        boolean z;
        synchronized (this.o) {
            z = this.p == historyRequest;
        }
        return z;
    }

    void b(HistoryRequest historyRequest) {
        synchronized (this.o) {
            if (this.p == historyRequest) {
                this.p = null;
                this.q = null;
            }
        }
    }
}
