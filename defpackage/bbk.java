package defpackage;

import com.twitter.util.collection.ap;
import com.twitter.util.concurrent.n;

/* compiled from: Twttr */
/* renamed from: bbk */
public class bbk extends ap<String, Object> {
    private final ThreadLocal<Boolean> a;

    public bbk() {
        this.a = new ThreadLocal();
    }

    public /* synthetic */ Object a(Object obj, Object obj2) {
        return b((String) obj, obj2);
    }

    public /* synthetic */ Object b(Object obj, Object obj2) {
        return a((String) obj, obj2);
    }

    public Object a(String str, Object obj) {
        cqf.a(bbn.class);
        return super.b(str, obj);
    }

    public int a() {
        cqf.a(bbn.class);
        return super.a();
    }

    public int b() {
        cqf.a(bbn.class);
        return super.b();
    }

    public <T> T a(n<T> nVar) {
        int b;
        Boolean bool = (Boolean) this.a.get();
        if (bool == null) {
            this.a.set(Boolean.valueOf(true));
        }
        int a = super.a();
        try {
            T call = nVar.call();
            b = super.b();
            if (a != b) {
                throw new IllegalStateException("Expected to destroy scope at level " + a + " and found level " + b + " instead.");
            }
            if (bool == null) {
                this.a.set(null);
            }
            return call;
        } catch (Throwable th) {
            b = super.b();
            if (a != b) {
                IllegalStateException illegalStateException = new IllegalStateException("Expected to destroy scope at level " + a + " and found level " + b + " instead.");
            } else if (bool == null) {
                this.a.set(null);
            }
        }
    }

    public Object b(String str, Object obj) {
        if (this.a.get() == null) {
            cqf.a(bbn.class);
        }
        return super.a(str, obj);
    }
}
