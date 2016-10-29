package tv.periscope.android.ui.broadcast;

import android.view.Surface;
import defpackage.dbz;
import tv.periscope.android.exoplayer.player.e;
import tv.periscope.android.exoplayer.player.f;
import tv.periscope.android.exoplayer.player.g;
import tv.periscope.android.exoplayer.player.j;

/* compiled from: Twttr */
public class am implements ak {
    private final e a;
    private final j b;
    private final dbz c;

    public am(e eVar, j jVar, g gVar, f fVar) {
        this.a = eVar;
        this.b = jVar;
        this.c = new dbz();
        a(jVar, gVar, fVar);
    }

    private void a(j jVar, g gVar, f fVar) {
        this.c.a();
        this.a.a(jVar);
        this.a.a(fVar);
        this.a.a(gVar);
        this.c.a();
        this.a.a(this.c);
        this.a.a(this.c);
        this.a.a(this.c);
    }

    public long a() {
        return this.a.getCurrentPosition();
    }

    public long b() {
        return this.a.g();
    }

    public void c() {
        this.a.c();
    }

    public void a(Surface surface) {
        this.a.a(surface);
    }

    public void d() {
        this.a.d();
    }

    public int e() {
        return this.a.f();
    }

    public boolean f() {
        return this.a.h();
    }

    public void a(long j) {
        this.a.a(j);
    }

    public void a(boolean z) {
        this.a.a(z);
    }

    public void g() {
        new an(this, this.a).start();
        this.a.b(this.b);
        this.a.b(this.c);
        this.a.a(null);
        this.a.a(null);
        this.a.a(null);
        this.a.a(null);
    }
}
