package dagger.internal;

import cxj;
import java.util.Collection;
import java.util.List;

/* compiled from: Twttr */
public final class g<T> {
    static final /* synthetic */ boolean a;
    private final List<cxj<T>> b;
    private final List<cxj<Collection<T>>> c;

    static {
        a = !e.class.desiredAssertionStatus();
    }

    private g(int i, int i2) {
        this.b = a.a(i);
        this.c = a.a(i2);
    }

    public g<T> a(cxj<? extends T> cxj__extends_T) {
        if (a || cxj__extends_T != null) {
            this.b.add(cxj__extends_T);
            return this;
        }
        throw new AssertionError("Codegen error? Null provider");
    }

    public e<T> a() {
        if (!a && a.a(this.b)) {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        } else if (a || !a.a(this.c)) {
            return new e(this.c, null);
        } else {
            throw new AssertionError("Codegen error?  Duplicates in the provider list");
        }
    }
}
