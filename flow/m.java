package flow;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Deque;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: Twttr */
public final class m {
    private final Deque<n> a;
    private final Map<Object, n> b;

    private m(Collection<n> collection) {
        this.b = new LinkedHashMap();
        this.a = new ArrayDeque(collection);
    }

    public m a() {
        while (!this.a.isEmpty()) {
            d();
        }
        return this;
    }

    public m a(Object obj) {
        Object obj2 = (n) this.b.get(obj);
        if (obj2 == null) {
            obj2 = new n(obj);
        }
        this.a.push(obj2);
        this.b.remove(obj);
        return this;
    }

    public Object b() {
        n nVar = (n) this.a.peek();
        return nVar == null ? null : nVar.a;
    }

    public boolean c() {
        return b() == null;
    }

    public Object d() {
        if (c()) {
            throw new IllegalStateException("Cannot pop from an empty builder");
        }
        n nVar = (n) this.a.pop();
        this.b.put(nVar.a, nVar);
        return nVar.a;
    }

    public k e() {
        return new k(this.a, null);
    }
}
