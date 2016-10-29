package defpackage;

import java.io.Closeable;
import rx.am;
import rx.q;

/* compiled from: Twttr */
/* renamed from: atr */
public class atr<C extends Closeable> implements q<C, C> {
    final atu<C> a;

    public atr(atu<C> atu_C) {
        this.a = atu_C;
    }

    public am<? super C> a(am<? super C> amVar) {
        return new ats(this, amVar, amVar);
    }
}
