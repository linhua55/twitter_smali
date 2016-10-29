package flow;

import android.content.Context;
import android.view.View;
import java.util.Iterator;

/* compiled from: Twttr */
public final class Flow {
    private k a;
    private d b;
    private e c;

    /* compiled from: Twttr */
    public enum Direction {
        FORWARD,
        BACKWARD,
        REPLACE
    }

    public static Flow a(View view) {
        return a(view.getContext());
    }

    public static Flow a(Context context) {
        return (Flow) context.getSystemService("flow.Flow.FLOW_SERVICE");
    }

    public static boolean a(String str) {
        return "flow.Flow.FLOW_SERVICE".equals(str);
    }

    public Flow(k kVar) {
        this.a = kVar;
    }

    public k a() {
        return this.a;
    }

    public void a(d dVar) {
        this.b = (d) r.a(dVar, "dispatcher", new Object[0]);
        if (this.c == null || (this.c.d == TraversalState.b && this.c.e == null)) {
            a(this.a, Direction.REPLACE);
        } else if (this.c.d == TraversalState.a) {
            this.c.c();
        } else if (this.c.d != TraversalState.b) {
            throw new AssertionError(String.format("Hanging traversal in unexpected state " + this.c.d, new Object[0]));
        }
    }

    public void b(d dVar) {
        if (this.b == r.a(dVar, "dispatcher", new Object[0])) {
            this.b = null;
        }
    }

    public void a(k kVar, Direction direction) {
        a(new a(this, kVar, direction));
    }

    public void a(Object obj) {
        a(new b(this, obj));
    }

    public boolean b() {
        boolean z = true;
        if (this.a.c() <= 1 && (this.c == null || this.c.d == TraversalState.c)) {
            z = false;
        }
        a(new c(this));
        return z;
    }

    private void a(e eVar) {
        if (this.c == null) {
            this.c = eVar;
            if (this.b != null) {
                eVar.c();
                return;
            }
            return;
        }
        this.c.a(eVar);
    }

    private static k b(k kVar, k kVar2) {
        Iterator b = kVar.b();
        Iterator b2 = kVar2.b();
        m a = kVar.f().a();
        while (b2.hasNext()) {
            Object next = b2.next();
            if (!b.hasNext()) {
                a.a(next);
                break;
            }
            Object next2 = b.next();
            if (!next2.equals(next)) {
                a.a(next);
                break;
            }
            a.a(next2);
        }
        while (b2.hasNext()) {
            a.a(b2.next());
        }
        return a.e();
    }
}
