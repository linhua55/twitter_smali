package flow;

import flow.Flow.Direction;

/* compiled from: Twttr */
class c extends e {
    final /* synthetic */ Flow a;

    c(Flow flow) {
        this.a = flow;
        super(null);
    }

    protected void b() {
        if (Flow.a(this.a).c() == 1) {
            a();
            return;
        }
        m f = Flow.a(this.a).f();
        f.d();
        a(f.e(), Direction.b);
    }
}
