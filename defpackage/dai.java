package defpackage;

import cys;
import rx.an;
import rx.internal.operators.m;
import rx.o;
import rx.p;

/* compiled from: Twttr */
/* renamed from: dai */
public abstract class dai<T> extends o<T> {
    public abstract void d(cys<? super an> cys__super_rx_an);

    protected dai(p<T> pVar) {
        super(pVar);
    }

    public final an a() {
        an[] anVarArr = new an[1];
        d(new daj(this, anVarArr));
        return anVarArr[0];
    }

    public o<T> q() {
        return dai.a(new m(this));
    }
}
