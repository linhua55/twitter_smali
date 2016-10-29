package flow;

import flow.Flow.Direction;
import java.util.Iterator;

/* compiled from: Twttr */
class b extends e {
    final /* synthetic */ Object a;
    final /* synthetic */ Flow b;

    b(Flow flow, Object obj) {
        this.b = flow;
        this.a = obj;
        super(null);
    }

    void b() {
        int i = 0;
        if (this.a.equals(Flow.a(this.b).d())) {
            a(Flow.a(this.b), Direction.c);
            return;
        }
        m f = Flow.a(this.b).f();
        Object obj = null;
        Iterator b = Flow.a(this.b).b();
        int i2 = 0;
        while (b.hasNext()) {
            if (b.next().equals(this.a)) {
                while (i < Flow.a(this.b).c() - i2) {
                    obj = f.d();
                    i++;
                }
                if (obj == null) {
                    f.a(obj);
                    a(f.e(), Direction.b);
                }
                f.a(this.a);
                a(f.e(), Direction.a);
                return;
            }
            i2++;
        }
        if (obj == null) {
            f.a(this.a);
            a(f.e(), Direction.a);
            return;
        }
        f.a(obj);
        a(f.e(), Direction.b);
    }
}
