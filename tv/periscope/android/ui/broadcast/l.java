package tv.periscope.android.ui.broadcast;

import android.content.Context;
import dbp;
import dck;
import java.util.List;
import tv.periscope.android.chat.f;
import tv.periscope.android.player.a;
import tv.periscope.android.player.b;
import tv.periscope.android.player.d;
import tv.periscope.android.player.e;
import tv.periscope.model.v;

/* compiled from: Twttr */
public class l implements d, e {
    protected f a;
    private final b b;
    private final ak c;
    private dbp d;

    public l(b bVar, tv.periscope.android.exoplayer.player.e eVar) {
        this.b = bVar;
        if (eVar != null) {
            this.c = new al(eVar);
        } else {
            this.c = null;
        }
    }

    public long d() {
        if (f()) {
            return this.a.k();
        }
        return 0;
    }

    public long e() {
        if (f()) {
            return this.a.l();
        }
        return -1;
    }

    public long p() {
        if (f()) {
            return this.a.j();
        }
        return 0;
    }

    public long q() {
        if (f()) {
            return this.a.g();
        }
        return 0;
    }

    public void a(dbp dbp) {
        this.d = dbp;
    }

    public boolean a(f fVar) {
        return a() && this.d.d.equals(fVar) && this.a != null && this.a.h();
    }

    private boolean a() {
        return (this.d.d == null || this.d.b == null || !this.d.d.a(this.d.b.f().c())) ? false : true;
    }

    public boolean f() {
        return this.a != null;
    }

    public boolean g() {
        return f() && this.a.f();
    }

    public boolean h() {
        return f() && this.a.p();
    }

    public boolean i() {
        return f() && this.a.q();
    }

    public boolean j() {
        return f() && this.a.o();
    }

    public void a(Context context, a aVar) {
        if (this.a != null) {
            this.a.e();
        }
        this.a = new f(context, this.b.a().getPreview(), aVar, this.b.b(), this.b.c(), this.c, new dck());
    }

    public boolean a(String str, String str2, String str3, List<v> list) {
        return f() && this.a.a(str, str2, str3, list);
    }

    public void a(long j) {
        if (f()) {
            this.a.a(j);
        }
    }

    public void a(boolean z) {
        if (f()) {
            this.a.n();
        }
    }

    public void k() {
        if (f()) {
            this.a.r();
        }
    }

    public void b(long j) {
        if (f()) {
            this.a.b(j);
        }
    }

    public void l() {
        if (f()) {
            this.a.m();
        }
    }

    public boolean m() {
        return f() && this.a.s();
    }

    public int n() {
        if (f()) {
            return this.a.i();
        }
        return 0;
    }

    public void o() {
        if (f()) {
            this.a.e();
            this.a = null;
        }
    }
}
