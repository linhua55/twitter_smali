package rx.internal.operators;

import cyw;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import rx.am;

/* compiled from: Twttr */
public final class a {
    public static long a(AtomicLong atomicLong, long j) {
        long j2;
        do {
            j2 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j2, a(j2, j)));
        return j2;
    }

    public static long a(long j, long j2) {
        long j3 = j + j2;
        if (j3 < 0) {
            return Long.MAX_VALUE;
        }
        return j3;
    }

    public static <T, R> void a(AtomicLong atomicLong, Queue<T> queue, am<? super R> amVar, cyw<? super T, ? extends R> cyw__super_T___extends_R) {
        long j;
        do {
            j = atomicLong.get();
            if ((j & Long.MIN_VALUE) != 0) {
                return;
            }
        } while (!atomicLong.compareAndSet(j, j | Long.MIN_VALUE));
        if (j != 0) {
            b(atomicLong, queue, amVar, cyw__super_T___extends_R);
        }
    }

    public static <T, R> boolean a(AtomicLong atomicLong, long j, Queue<T> queue, am<? super R> amVar, cyw<? super T, ? extends R> cyw__super_T___extends_R) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required but it was " + j);
        } else if (j != 0) {
            long j2;
            long j3;
            do {
                j2 = atomicLong.get();
                j3 = Long.MIN_VALUE & j2;
            } while (!atomicLong.compareAndSet(j2, a(Long.MAX_VALUE & j2, j) | j3));
            if (j2 != Long.MIN_VALUE) {
                return j3 == 0;
            } else {
                b(atomicLong, queue, amVar, cyw__super_T___extends_R);
                return false;
            }
        } else if ((atomicLong.get() & Long.MIN_VALUE) == 0) {
            return true;
        } else {
            return false;
        }
    }

    static <T, R> void b(AtomicLong atomicLong, Queue<T> queue, am<? super R> amVar, cyw<? super T, ? extends R> cyw__super_T___extends_R) {
        long j = atomicLong.get();
        if (j == Long.MAX_VALUE) {
            while (!amVar.b()) {
                Object poll = queue.poll();
                if (poll == null) {
                    amVar.bs_();
                    return;
                }
                amVar.b_(cyw__super_T___extends_R.a(poll));
            }
            return;
        }
        long j2 = j;
        j = Long.MIN_VALUE;
        while (true) {
            if (j == j2) {
                if (j == j2) {
                    if (!amVar.b()) {
                        if (queue.isEmpty()) {
                            amVar.bs_();
                            return;
                        }
                    }
                    return;
                }
                j2 = atomicLong.get();
                if (j2 == j) {
                    j = atomicLong.addAndGet(-(j & Long.MAX_VALUE));
                    if (j != Long.MIN_VALUE) {
                        j2 = j;
                        j = Long.MIN_VALUE;
                    } else {
                        return;
                    }
                }
                continue;
            } else if (!amVar.b()) {
                Object poll2 = queue.poll();
                if (poll2 == null) {
                    amVar.bs_();
                    return;
                } else {
                    amVar.b_(cyw__super_T___extends_R.a(poll2));
                    j++;
                }
            } else {
                return;
            }
        }
    }

    public static long b(AtomicLong atomicLong, long j) {
        long j2;
        long j3;
        do {
            j3 = atomicLong.get();
            if (j3 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j2 = j3 - j;
            if (j2 < 0) {
                throw new IllegalStateException("More produced than requested: " + j2);
            }
        } while (!atomicLong.compareAndSet(j3, j2));
        return j2;
    }
}
