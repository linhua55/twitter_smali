package rx.internal.operators;

import dbg;
import defpackage.cyx;
import defpackage.cyy;
import defpackage.cyz;
import java.util.concurrent.atomic.AtomicLong;
import rx.am;
import rx.an;
import rx.exceptions.e;
import rx.internal.util.s;
import rx.o;
import rx.q;
import rx.r;

/* compiled from: Twttr */
public final class OperatorZip<R> implements q<R, o<?>[]> {
    final cyy<? extends R> a;

    /* compiled from: Twttr */
    final class Zip<R> extends AtomicLong {
        static final int a;
        private static final long serialVersionUID = 5995274816189928317L;
        final r<? super R> child;
        private final dbg childSubscription;
        int emitted;
        private AtomicLong requested;
        private volatile Object[] subscribers;
        private final cyy<? extends R> zipFunction;

        static {
            a = (int) (((double) s.c) * 0.7d);
        }

        public Zip(am<? super R> amVar, cyy<? extends R> cyy__extends_R) {
            this.childSubscription = new dbg();
            this.emitted = a;
            this.child = amVar;
            this.zipFunction = cyy__extends_R;
            amVar.a(this.childSubscription);
        }

        public void a(o[] oVarArr, AtomicLong atomicLong) {
            int i = a;
            Object[] objArr = new Object[oVarArr.length];
            for (int i2 = a; i2 < oVarArr.length; i2++) {
                do doVar = new do(this);
                objArr[i2] = doVar;
                this.childSubscription.a(doVar);
            }
            this.requested = atomicLong;
            this.subscribers = objArr;
            while (i < oVarArr.length) {
                oVarArr[i].a((do) objArr[i]);
                i++;
            }
        }

        void a() {
            Object[] objArr = this.subscribers;
            if (objArr != null && getAndIncrement() == 0) {
                int length = objArr.length;
                r rVar = this.child;
                AtomicLong atomicLong = this.requested;
                while (true) {
                    s sVar;
                    Object obj = new Object[length];
                    int i = 1;
                    int i2 = a;
                    while (i2 < length) {
                        int i3;
                        sVar = ((do) objArr[i2]).a;
                        Object i4 = sVar.i();
                        if (i4 == null) {
                            i3 = a;
                        } else if (sVar.b(i4)) {
                            rVar.bs_();
                            this.childSubscription.K_();
                            return;
                        } else {
                            obj[i2] = sVar.c(i4);
                            i3 = i;
                        }
                        i2++;
                        i = i3;
                    }
                    if (atomicLong.get() > 0 && i != 0) {
                        try {
                            rVar.b_(this.zipFunction.b(obj));
                            atomicLong.decrementAndGet();
                            this.emitted++;
                            i2 = objArr.length;
                            for (i = a; i < i2; i++) {
                                sVar = ((do) objArr[i]).a;
                                sVar.h();
                                if (sVar.b(sVar.i())) {
                                    rVar.bs_();
                                    this.childSubscription.K_();
                                    return;
                                }
                            }
                            if (this.emitted > a) {
                                i2 = objArr.length;
                                for (i = a; i < i2; i++) {
                                    ((do) objArr[i]).b((long) this.emitted);
                                }
                                this.emitted = a;
                            }
                        } catch (Throwable th) {
                            e.a(th, rVar, obj);
                            return;
                        }
                    } else if (decrementAndGet() <= 0) {
                        return;
                    }
                }
            }
        }
    }

    /* compiled from: Twttr */
    final class ZipProducer<R> extends AtomicLong implements rx.s {
        private static final long serialVersionUID = -1216676403723546796L;
        private Zip<R> zipper;

        public ZipProducer(Zip<R> zip) {
            this.zipper = zip;
        }

        public void a(long j) {
            a.a((AtomicLong) this, j);
            this.zipper.a();
        }
    }

    public OperatorZip(cyy<? extends R> cyy__extends_R) {
        this.a = cyy__extends_R;
    }

    public OperatorZip(cyx cyx) {
        this.a = cyz.a(cyx);
    }

    public am<? super o[]> a(am<? super R> amVar) {
        Zip zip = new Zip(amVar, this.a);
        rx.s zipProducer = new ZipProducer(zip);
        an dpVar = new dp(this, amVar, zip, zipProducer);
        amVar.a(dpVar);
        amVar.a(zipProducer);
        return dpVar;
    }
}
