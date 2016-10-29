package tv.periscope.android.chat;

import android.annotation.TargetApi;
import de.greenrobot.event.c;
import defpackage.dby;
import java.util.ArrayList;
import java.util.Iterator;
import tv.periscope.android.player.e;

@TargetApi(19)
/* compiled from: Twttr */
public class q implements c {
    private final c a;
    private final dby b;
    private final d c;
    private e d;
    private i e;
    private boolean f;
    private r g;
    private x h;
    private f i;
    private String j;

    public q(c cVar, dby dby, d dVar, e eVar, boolean z, i iVar) {
        this.a = cVar;
        this.b = dby;
        this.d = eVar;
        this.f = z;
        this.c = dVar;
        this.e = iVar;
    }

    public void b() {
        this.a.a((Object) this);
    }

    public void c() {
        if (this.g != null) {
            this.g.h();
        }
    }

    public void d() {
        if (this.g != null) {
            this.g.i();
        }
    }

    public void a(long j) {
        if (this.h != null) {
            this.h.c(j);
            this.h.a(false, true);
        }
        if (this.g != null) {
            this.g.c();
            this.g.i();
        }
    }

    public void a() {
        f();
        this.d = null;
        this.e = null;
    }

    private void f() {
        this.a.b(this);
        if (this.g != null) {
            this.g.b();
            this.g = null;
        }
        this.h = null;
    }

    public void e() {
        if (this.g != null) {
            this.g.c();
        }
        if (this.h != null) {
            this.h.a(false, false);
        }
    }

    public void a(f fVar, String str, String str2, String str3) {
        this.i = fVar;
        this.j = str3;
        if (this.g != null) {
            this.g.a(fVar, str3);
        }
    }

    public void a(boolean z) {
        this.f = z;
        if (!(this.g == null && this.h == null)) {
            f();
        }
        this.g = new r(this.a, this.b, this.c, this.d, this.f, this.e);
        this.h = new b(this.f, this.g.g());
        this.g.a(this.h);
        this.g.a(this.i, this.j);
        this.g.start();
    }

    public void onEventMainThread(EventHistory eventHistory) {
        if (this.g != null && this.h != null) {
            w wVar;
            Object arrayList = new ArrayList();
            for (w wVar2 : eventHistory.a()) {
                arrayList.add(wVar2);
            }
            this.h.a(arrayList, eventHistory.b(), eventHistory.c);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                wVar2 = (w) it.next();
                this.g.a(wVar2.a.throttle, (Object) wVar2);
            }
        }
    }
}
