package tv.periscope.android.chat;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Looper;
import de.greenrobot.event.c;
import defpackage.dby;
import defpackage.ddg;
import java.util.Comparator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import tv.periscope.android.library.p;
import tv.periscope.android.player.e;
import tv.periscope.model.chat.MessageType;
import tv.periscope.model.chat.MessageType.Throttle;

@TargetApi(19)
/* compiled from: Twttr */
class r extends h<w> {
    private static final long a;
    private final Handler b;
    private final c c;
    private final dby d;
    private final d e;
    private final boolean f;
    private e g;
    private x h;
    private volatile boolean i;
    private volatile int j;
    private f k;
    private String l;

    static {
        a = TimeUnit.SECONDS.toMillis(60);
    }

    public r(c cVar, dby dby, d dVar, e eVar, boolean z, i iVar) {
        Comparator uVar;
        if (z) {
            uVar = new u();
        } else {
            uVar = new v();
        }
        super(uVar, iVar);
        this.b = new Handler(Looper.getMainLooper());
        this.c = cVar;
        this.d = dby;
        this.e = dVar;
        this.f = z;
        this.g = eVar;
    }

    public void a(x xVar) {
        this.h = xVar;
    }

    public void a() {
        super.a();
        this.b.removeCallbacksAndMessages(null);
        this.g = null;
        this.h = null;
    }

    public void h() {
        this.i = true;
    }

    public void i() {
        this.i = false;
        f();
    }

    public synchronized void a(f fVar, String str) {
        this.k = fVar;
        this.l = str;
    }

    public void a(Map<Throttle, j<w>> map, Map<Throttle, j<w>> map2) throws Exception {
        long j = 100;
        if (this.i) {
            e();
        }
        for (j jVar : map.values()) {
            a((Object) (w) jVar.a.poll(), jVar.b);
        }
        synchronized (this) {
            f fVar = this.k;
            String str = this.l;
        }
        if (this.g.a(fVar)) {
            b(fVar, str);
            for (j jVar2 : map2.values()) {
                long j2;
                w wVar = (w) jVar2.a.poll();
                a(jVar2.b);
                if (wVar == null) {
                    j2 = j;
                } else if (jVar2.a()) {
                    d(wVar);
                    j2 = Math.min(j, jVar2.c());
                } else {
                    jVar2.a.offer(wVar);
                    j2 = Math.min(j, jVar2.b());
                }
                j = j2;
            }
        } else {
            j = 500;
        }
        a(j);
    }

    public boolean a(w wVar) {
        if (wVar.a == MessageType.Chat || wVar.a == MessageType.Heart) {
            return c(wVar);
        }
        return true;
    }

    private void a(f fVar, String str, long j, String str2) {
        this.b.post(new s(this, j, str2, fVar, str));
    }

    private void b(f fVar, String str) {
        if (fVar != null && ddg.b(str) && this.h.a()) {
            a(fVar, str, this.h.b(), this.h.c());
            this.h.a(false, false);
        }
    }

    public boolean a(Throttle throttle, Queue<w> queue, w wVar) {
        if ((throttle == Throttle.c || throttle == Throttle.b) && queue.size() > throttle.minQueueSizeForDrop && wVar.a() - this.g.q() < throttle.deliveryThresholdMs) {
            return true;
        }
        return false;
    }

    public void b(w wVar) {
        b(wVar.a.throttle, wVar);
    }

    private void d(w wVar) {
        switch (t.a[wVar.a.ordinal()]) {
            case p.View_android_focusable /*1*/:
            case p.View_paddingStart /*2*/:
            case p.View_paddingEnd /*3*/:
            case p.View_theme /*4*/:
            case p.Toolbar_contentInsetStart /*5*/:
            case p.Toolbar_contentInsetEnd /*6*/:
                if (wVar.a != MessageType.Join || (this.j <= 20 && wVar.b() <= a)) {
                    Object obj = (wVar.b.c() == null || !this.d.a(wVar.b.c())) ? 1 : null;
                    if (obj == null) {
                        return;
                    }
                    if (c(wVar)) {
                        this.c.c(wVar.b);
                        if (wVar.a == MessageType.Join) {
                            this.j++;
                            return;
                        }
                        return;
                    }
                    b(wVar);
                }
            default:
        }
    }

    protected boolean c(w wVar) {
        if (this.f) {
            long q = this.g.q();
            long a = wVar.a();
            if (0 == q || q < a) {
                return false;
            }
            return true;
        } else if (wVar.b() > this.g.d()) {
            return false;
        } else {
            return true;
        }
    }

    public void c() {
        super.c();
        this.j = 0;
        this.b.removeCallbacksAndMessages(null);
    }
}
