package rx.internal.operators;

import cyw;
import rx.am;
import rx.an;
import rx.q;

/* compiled from: Twttr */
public final class ay<T> implements q<T, T> {
    final cyw<? super T, Boolean> a;

    public ay(cyw<? super T, Boolean> cyw__super_T__java_lang_Boolean) {
        this.a = cyw__super_T__java_lang_Boolean;
    }

    public am<? super T> a(am<? super T> amVar) {
        an azVar = new az(amVar, this.a);
        amVar.a(azVar);
        return azVar;
    }
}
