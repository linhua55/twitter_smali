package rx.internal.operators;

import cyw;
import defpackage.dbj;
import rx.am;
import rx.an;
import rx.internal.producers.a;
import rx.o;
import rx.q;
import rx.s;

/* compiled from: Twttr */
public final class bm<T> implements q<T, T> {
    final cyw<Throwable, ? extends o<? extends T>> a;

    public static <T> bm<T> a(cyw<Throwable, ? extends T> cyw_java_lang_Throwable___extends_T) {
        return new bm(new bn(cyw_java_lang_Throwable___extends_T));
    }

    public static <T> bm<T> a(o<? extends T> oVar) {
        return new bm(new bo(oVar));
    }

    public bm(cyw<Throwable, ? extends o<? extends T>> cyw_java_lang_Throwable___extends_rx_o__extends_T) {
        this.a = cyw_java_lang_Throwable___extends_rx_o__extends_T;
    }

    public am<? super T> a(am<? super T> amVar) {
        s aVar = new a();
        an dbj = new dbj();
        am bpVar = new bp(this, amVar, aVar, dbj);
        dbj.a(bpVar);
        amVar.a(dbj);
        amVar.a(aVar);
        return bpVar;
    }
}
