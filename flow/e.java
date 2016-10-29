package flow;

import flow.Flow.Direction;

/* compiled from: Twttr */
abstract class e implements g {
    Flow$TraversalState d;
    e e;
    k f;
    final /* synthetic */ Flow g;

    abstract void b();

    private e(Flow flow) {
        this.g = flow;
        this.d = Flow$TraversalState.ENQUEUED;
    }

    void a(e eVar) {
        if (this.e == null) {
            this.e = eVar;
        } else {
            this.e.a(eVar);
        }
    }

    public void a() {
        if (this.d != Flow$TraversalState.DISPATCHED) {
            throw new IllegalStateException(this.d == Flow$TraversalState.FINISHED ? "onComplete already called for this transition" : "transition not yet dispatched!");
        }
        if (this.f != null) {
            Flow.a(this.g, this.f);
        }
        this.d = Flow$TraversalState.FINISHED;
        Flow.a(this.g, this.e);
        if (Flow.b(this.g) != null && Flow.c(this.g) != null) {
            Flow.c(this.g).c();
        }
    }

    void a(k kVar, Direction direction) {
        this.f = (k) r.a((Object) kVar, "nextBackstack", new Object[0]);
        if (Flow.b(this.g) == null) {
            throw new AssertionError("Bad doExecute method allowed dispatcher to be cleared");
        }
        Flow.b(this.g).a(new f(this.g.a(), kVar, direction, null), this);
    }

    final void c() {
        if (this.d != Flow$TraversalState.ENQUEUED) {
            throw new AssertionError("unexpected state " + this.d);
        } else if (Flow.b(this.g) == null) {
            throw new AssertionError("Caller must ensure that dispatcher is set");
        } else {
            this.d = Flow$TraversalState.DISPATCHED;
            b();
        }
    }
}
