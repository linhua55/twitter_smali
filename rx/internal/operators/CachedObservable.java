package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import rx.am;
import rx.an;
import rx.o;
import rx.p;
import rx.s;

/* compiled from: Twttr */
public final class CachedObservable<T> extends o<T> {
    private final b<T> c;

    /* compiled from: Twttr */
    final class CachedSubscribe<T> extends AtomicBoolean implements p<T> {
        private static final long serialVersionUID = -2817751667698696782L;
        final b<T> state;

        public /* synthetic */ void call(Object obj) {
            a((am) obj);
        }

        public CachedSubscribe(b<T> bVar) {
            this.state = bVar;
        }

        public void a(am<? super T> amVar) {
            s replayProducer = new ReplayProducer(amVar, this.state);
            this.state.a((ReplayProducer) replayProducer);
            amVar.a((an) replayProducer);
            amVar.a(replayProducer);
            if (!get() && compareAndSet(false, true)) {
                this.state.b();
            }
        }
    }

    /* compiled from: Twttr */
    final class ReplayProducer<T> extends AtomicLong implements an, s {
        private static final long serialVersionUID = -2557562030197141021L;
        final am<? super T> child;
        Object[] currentBuffer;
        int currentIndexInBuffer;
        boolean emitting;
        int index;
        boolean missed;
        final b<T> state;

        public ReplayProducer(am<? super T> amVar, b<T> bVar) {
            this.child = amVar;
            this.state = bVar;
        }

        public void a(long j) {
            long j2;
            long j3;
            do {
                j2 = get();
                if (j2 >= 0) {
                    j3 = j2 + j;
                    if (j3 < 0) {
                        j3 = Long.MAX_VALUE;
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(j2, j3));
            c();
        }

        public long b(long j) {
            return addAndGet(-j);
        }

        public boolean b() {
            return get() < 0;
        }

        public void K_() {
            if (get() >= 0 && getAndSet(-1) >= 0) {
                this.state.b(this);
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void c() {
            /*
            r15 = this;
            monitor-enter(r15);
            r0 = r15.emitting;	 Catch:{ all -> 0x0059 }
            if (r0 == 0) goto L_0x000a;
        L_0x0005:
            r0 = 1;
            r15.missed = r0;	 Catch:{ all -> 0x0059 }
            monitor-exit(r15);	 Catch:{ all -> 0x0059 }
        L_0x0009:
            return;
        L_0x000a:
            r0 = 1;
            r15.emitting = r0;	 Catch:{ all -> 0x0059 }
            monitor-exit(r15);	 Catch:{ all -> 0x0059 }
            r1 = 0;
            r0 = r15.state;	 Catch:{ all -> 0x0050 }
            r8 = r0.e;	 Catch:{ all -> 0x0050 }
            r9 = r15.child;	 Catch:{ all -> 0x0050 }
        L_0x0015:
            r6 = r15.get();	 Catch:{ all -> 0x0050 }
            r2 = 0;
            r0 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1));
            if (r0 < 0) goto L_0x0009;
        L_0x001f:
            r0 = r15.state;	 Catch:{ all -> 0x0050 }
            r10 = r0.e();	 Catch:{ all -> 0x0050 }
            if (r10 == 0) goto L_0x00de;
        L_0x0027:
            r4 = r15.currentBuffer;	 Catch:{ all -> 0x0050 }
            if (r4 != 0) goto L_0x0033;
        L_0x002b:
            r0 = r15.state;	 Catch:{ all -> 0x0050 }
            r4 = r0.d();	 Catch:{ all -> 0x0050 }
            r15.currentBuffer = r4;	 Catch:{ all -> 0x0050 }
        L_0x0033:
            r0 = r4.length;	 Catch:{ all -> 0x0050 }
            r11 = r0 + -1;
            r3 = r15.index;	 Catch:{ all -> 0x0050 }
            r2 = r15.currentIndexInBuffer;	 Catch:{ all -> 0x0050 }
            r12 = 0;
            r0 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1));
            if (r0 != 0) goto L_0x006e;
        L_0x0040:
            r0 = r4[r2];	 Catch:{ all -> 0x0050 }
            r2 = r8.b(r0);	 Catch:{ all -> 0x0050 }
            if (r2 == 0) goto L_0x005c;
        L_0x0048:
            r9.bs_();	 Catch:{ all -> 0x0050 }
            r1 = 1;
            r15.K_();	 Catch:{ all -> 0x0050 }
            goto L_0x0009;
        L_0x0050:
            r0 = move-exception;
            if (r1 != 0) goto L_0x0058;
        L_0x0053:
            monitor-enter(r15);
            r1 = 0;
            r15.emitting = r1;	 Catch:{ all -> 0x00f3 }
            monitor-exit(r15);	 Catch:{ all -> 0x00f3 }
        L_0x0058:
            throw r0;
        L_0x0059:
            r0 = move-exception;
            monitor-exit(r15);	 Catch:{ all -> 0x0059 }
            throw r0;
        L_0x005c:
            r2 = r8.c(r0);	 Catch:{ all -> 0x0050 }
            if (r2 == 0) goto L_0x00de;
        L_0x0062:
            r0 = r8.e(r0);	 Catch:{ all -> 0x0050 }
            r9.a(r0);	 Catch:{ all -> 0x0050 }
            r1 = 1;
            r15.K_();	 Catch:{ all -> 0x0050 }
            goto L_0x0009;
        L_0x006e:
            r12 = 0;
            r0 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1));
            if (r0 <= 0) goto L_0x00de;
        L_0x0074:
            r0 = 0;
            r5 = r3;
            r3 = r0;
            r0 = r2;
            r2 = r4;
        L_0x0079:
            if (r5 >= r10) goto L_0x00ce;
        L_0x007b:
            r12 = 0;
            r4 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1));
            if (r4 <= 0) goto L_0x00ce;
        L_0x0081:
            r4 = r9.b();	 Catch:{ all -> 0x0050 }
            if (r4 != 0) goto L_0x0009;
        L_0x0087:
            if (r0 != r11) goto L_0x0093;
        L_0x0089:
            r0 = r2[r11];	 Catch:{ all -> 0x0050 }
            r0 = (java.lang.Object[]) r0;	 Catch:{ all -> 0x0050 }
            r0 = (java.lang.Object[]) r0;	 Catch:{ all -> 0x0050 }
            r2 = 0;
            r14 = r2;
            r2 = r0;
            r0 = r14;
        L_0x0093:
            r4 = r2[r0];	 Catch:{ all -> 0x0050 }
            r12 = r8.a(r9, r4);	 Catch:{ Throwable -> 0x00a1 }
            if (r12 == 0) goto L_0x00c2;
        L_0x009b:
            r1 = 1;
            r15.K_();	 Catch:{ Throwable -> 0x00a1 }
            goto L_0x0009;
        L_0x00a1:
            r0 = move-exception;
            rx.exceptions.e.a(r0);	 Catch:{ all -> 0x0050 }
            r1 = 1;
            r15.K_();	 Catch:{ all -> 0x0050 }
            r2 = r8.c(r4);	 Catch:{ all -> 0x0050 }
            if (r2 != 0) goto L_0x0009;
        L_0x00af:
            r2 = r8.b(r4);	 Catch:{ all -> 0x0050 }
            if (r2 != 0) goto L_0x0009;
        L_0x00b5:
            r2 = r8.d(r4);	 Catch:{ all -> 0x0050 }
            r0 = rx.exceptions.OnErrorThrowable.a(r0, r2);	 Catch:{ all -> 0x0050 }
            r9.a(r0);	 Catch:{ all -> 0x0050 }
            goto L_0x0009;
        L_0x00c2:
            r4 = r0 + 1;
            r5 = r5 + 1;
            r12 = 1;
            r6 = r6 - r12;
            r0 = r3 + 1;
            r3 = r0;
            r0 = r4;
            goto L_0x0079;
        L_0x00ce:
            r4 = r9.b();	 Catch:{ all -> 0x0050 }
            if (r4 != 0) goto L_0x0009;
        L_0x00d4:
            r15.index = r5;	 Catch:{ all -> 0x0050 }
            r15.currentIndexInBuffer = r0;	 Catch:{ all -> 0x0050 }
            r15.currentBuffer = r2;	 Catch:{ all -> 0x0050 }
            r2 = (long) r3;	 Catch:{ all -> 0x0050 }
            r15.b(r2);	 Catch:{ all -> 0x0050 }
        L_0x00de:
            monitor-enter(r15);	 Catch:{ all -> 0x0050 }
            r0 = r15.missed;	 Catch:{ all -> 0x00ea }
            if (r0 != 0) goto L_0x00ed;
        L_0x00e3:
            r0 = 0;
            r15.emitting = r0;	 Catch:{ all -> 0x00ea }
            r1 = 1;
            monitor-exit(r15);	 Catch:{ all -> 0x00ea }
            goto L_0x0009;
        L_0x00ea:
            r0 = move-exception;
            monitor-exit(r15);	 Catch:{ all -> 0x00ea }
            throw r0;	 Catch:{ all -> 0x0050 }
        L_0x00ed:
            r0 = 0;
            r15.missed = r0;	 Catch:{ all -> 0x00ea }
            monitor-exit(r15);	 Catch:{ all -> 0x00ea }
            goto L_0x0015;
        L_0x00f3:
            r0 = move-exception;
            monitor-exit(r15);	 Catch:{ all -> 0x00f3 }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.CachedObservable.ReplayProducer.c():void");
        }
    }

    public static <T> CachedObservable<T> i(o<? extends T> oVar) {
        return b(oVar, 16);
    }

    public static <T> CachedObservable<T> b(o<? extends T> oVar, int i) {
        if (i < 1) {
            throw new IllegalArgumentException("capacityHint > 0 required");
        }
        b bVar = new b(oVar, i);
        return new CachedObservable(new CachedSubscribe(bVar), bVar);
    }

    private CachedObservable(p<T> pVar, b<T> bVar) {
        super(pVar);
        this.c = bVar;
    }
}
