package rx.internal.operators;

import rx.am;
import rx.o;

/* compiled from: Twttr */
final class dp extends am<o[]> {
    final am<? super R> a;
    final Zip<R> b;
    final ZipProducer<R> c;
    boolean d;
    final /* synthetic */ OperatorZip e;

    public /* synthetic */ void b_(Object obj) {
        a((o[]) obj);
    }

    public dp(OperatorZip operatorZip, am<? super R> amVar, Zip<R> zip, ZipProducer<R> zipProducer) {
        this.e = operatorZip;
        this.d = false;
        this.a = amVar;
        this.b = zip;
        this.c = zipProducer;
    }

    public void bs_() {
        if (!this.d) {
            this.a.bs_();
        }
    }

    public void a(Throwable th) {
        this.a.a(th);
    }

    public void a(o[] oVarArr) {
        if (oVarArr == null || oVarArr.length == 0) {
            this.a.bs_();
            return;
        }
        this.d = true;
        this.b.a(oVarArr, this.c);
    }
}
