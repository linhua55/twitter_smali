package rx.internal.util;

import cys;
import defpackage.cyr;
import rx.am;

/* compiled from: Twttr */
public final class a<T> extends am<T> {
    final cys<? super T> a;
    final cys<Throwable> b;
    final cyr c;

    public a(cys<? super T> cys__super_T, cys<Throwable> cys_java_lang_Throwable, cyr cyr) {
        this.a = cys__super_T;
        this.b = cys_java_lang_Throwable;
        this.c = cyr;
    }

    public void b_(T t) {
        this.a.call(t);
    }

    public void a(Throwable th) {
        this.b.call(th);
    }

    public void bs_() {
        this.c.a();
    }
}
