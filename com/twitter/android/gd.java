package com.twitter.android;

import android.os.Bundle;
import com.twitter.android.FlowPresenter.Direction;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.util.object.e;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class gd implements FlowPresenter {
    private final gc a;
    private List<Flow$Step> b;
    private FlowData c;

    public gd(gc gcVar) {
        this.b = new ArrayList();
        this.a = gcVar;
    }

    public void a(Direction direction) {
        a(g(), direction);
    }

    private void a(Flow$Step flow$Step, Direction direction) {
        if (flow$Step == null) {
            Session c = bg.a().c();
            if (direction == Direction.Forward && c.d()) {
                if (this.c.c()) {
                    this.a.i();
                }
                String e = c.e();
                if (e != null) {
                    this.a.g(e);
                }
            }
            this.a.h();
        } else if (flow$Step.c(this.c)) {
            b(flow$Step, direction);
        } else {
            Bundle bundle = new Bundle();
            bundle.putParcelable("extra_flow_data", this.c);
            this.a.a(flow$Step, direction, bundle);
            this.a.a(flow$Step.f());
        }
    }

    public void b(Direction direction) {
        b(g(), direction);
    }

    public void a() {
        Flow$Step g = g();
        if (g == null || !g.e()) {
            b(Direction.Backward);
        }
    }

    private void b(Flow$Step flow$Step, Direction direction) {
        a(c(flow$Step, direction), direction);
    }

    protected Flow$Step g() {
        if (this.b.isEmpty()) {
            return null;
        }
        return (Flow$Step) this.b.get(h() - 1);
    }

    public String c() {
        Flow$Step g = g();
        return g != null ? g.c : "error";
    }

    protected int h() {
        return this.b.size();
    }

    private Flow$Step c(Flow$Step flow$Step, Direction direction) {
        if (direction == Direction.Forward) {
            if (flow$Step == null) {
                return null;
            }
            Flow$Step b = flow$Step.b(this.c);
            if (b == null) {
                return b;
            }
            this.b.add(b);
            return b;
        } else if (direction != Direction.Backward || this.b.isEmpty()) {
            return null;
        } else {
            this.b.remove(h() - 1);
            return g();
        }
    }

    public void a(Flow$Step flow$Step, gb gbVar) {
        Direction direction;
        int lastIndexOf = this.b.lastIndexOf(flow$Step);
        if (lastIndexOf > -1) {
            Flow$Step flow$Step2 = (Flow$Step) this.b.get(lastIndexOf);
            a(lastIndexOf + 1, h() - 1);
            flow$Step = flow$Step2;
            direction = Direction.Backward;
        } else {
            this.b.add(flow$Step);
            direction = Direction.Forward;
        }
        a(flow$Step, direction);
        if (gbVar != null && flow$Step.b(this.a.getSupportFragmentManager())) {
            flow$Step.b(gbVar);
        }
    }

    public void a(boolean z) {
        Flow$Step g = g();
        int h = h();
        a(0, z ? h - 1 : h - 2);
        if (z) {
            a(c(g, Direction.Forward), Direction.Forward);
        }
    }

    private void a(int i, int i2) {
        int max = Math.max(i, 0);
        for (int min = Math.min(i2, h() - 1); min >= max; min--) {
            this.b.remove(min);
        }
    }

    public void a(gb gbVar) {
        Flow$Step flow$Step;
        for (int h = h() - 1; h >= 0; h--) {
            flow$Step = (Flow$Step) this.b.get(h);
            if (flow$Step.a(gbVar)) {
                break;
            }
        }
        flow$Step = null;
        if (flow$Step != null) {
            a(flow$Step, gbVar);
        }
    }

    public void a(Bundle bundle) {
        bundle.putParcelableArrayList("flow_presenter", new ArrayList(this.b));
        bundle.putParcelable("flow_data", this.c);
    }

    public void b(Bundle bundle) {
        this.b = (List) e.a(bundle.getParcelableArrayList("flow_presenter"));
        this.c = (FlowData) bundle.getParcelable("flow_data");
    }

    public void a(List<Flow$Step> list, FlowData flowData) {
        this.b = list;
        this.c = flowData;
    }

    public FlowData b() {
        return this.c;
    }

    public void d() {
        Flow$Step g = g();
        if (g == null) {
            b(null, Direction.Forward);
        } else if (g.b(this.a.getSupportFragmentManager()) && !g.a(this.c)) {
            b(g, Direction.Forward);
        }
    }

    public void a(int i, boolean z) {
        Flow$Step g = g();
        if (g != null) {
            Flow$Options flow$Options = g.b;
            flow$Options.b = true;
            flow$Options.c = i;
        }
    }

    public void e() {
        Flow$Step g = g();
        if (g == null) {
            b(null, Direction.Forward);
        } else if (g.b(this.a.getSupportFragmentManager()) && !g.a()) {
            b(g, Direction.Forward);
        }
    }

    public void a(ValidationState validationState) {
        Flow$Step g = g();
        if (g != null) {
            g.a(validationState);
        }
    }

    public ValidationState f() {
        Flow$Step g = g();
        if (g != null) {
            return g.b();
        }
        return null;
    }
}
