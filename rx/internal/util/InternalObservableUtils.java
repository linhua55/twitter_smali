package rx.internal.util;

import cys;
import cyw;
import rx.internal.operators.v;
import rx.q;

/* compiled from: Twttr */
public enum InternalObservableUtils {
    ;
    
    public static final g a;
    public static final h b;
    public static final f c;
    public static final j d;
    static final i e;
    static final e f;
    public static final cys<Throwable> g;
    public static final q<Boolean, Object> h;

    static {
        a = new g();
        b = new h();
        c = new f();
        d = new j();
        e = new i();
        f = new e();
        g = new c();
        h = new v(UtilityFunctions.a(), true);
    }

    public static cyw<Object, Boolean> a(Class<?> cls) {
        return new d(cls);
    }
}
