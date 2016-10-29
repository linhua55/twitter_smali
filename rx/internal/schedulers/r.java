package rx.internal.schedulers;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicReference;
import rx.internal.util.RxThreadFactory;

/* compiled from: Twttr */
public final class r implements y {
    public static final r a;
    private static final RxThreadFactory b;
    private static final ScheduledExecutorService[] c;
    private static final ScheduledExecutorService d;
    private static int f;
    private final AtomicReference<ScheduledExecutorService[]> e;

    static {
        b = new RxThreadFactory("RxScheduledExecutorPool-");
        c = new ScheduledExecutorService[0];
        d = Executors.newScheduledThreadPool(0);
        d.shutdown();
        a = new r();
    }

    private r() {
        this.e = new AtomicReference(c);
        a();
    }

    public void a() {
        int i = 8;
        int i2 = 0;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        if (availableProcessors > 4) {
            availableProcessors /= 2;
        }
        if (availableProcessors <= 8) {
            i = availableProcessors;
        }
        Object obj = new ScheduledExecutorService[i];
        for (availableProcessors = 0; availableProcessors < i; availableProcessors++) {
            obj[availableProcessors] = Executors.newScheduledThreadPool(1, b);
        }
        if (this.e.compareAndSet(c, obj)) {
            availableProcessors = obj.length;
            while (i2 < availableProcessors) {
                ScheduledExecutorService scheduledExecutorService = obj[i2];
                if (!v.b(scheduledExecutorService) && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
                    v.a((ScheduledThreadPoolExecutor) scheduledExecutorService);
                }
                i2++;
            }
            return;
        }
        for (ScheduledExecutorService shutdownNow : obj) {
            shutdownNow.shutdownNow();
        }
    }

    public void d() {
        ScheduledExecutorService[] scheduledExecutorServiceArr;
        do {
            scheduledExecutorServiceArr = (ScheduledExecutorService[]) this.e.get();
            if (scheduledExecutorServiceArr == c) {
                return;
            }
        } while (!this.e.compareAndSet(scheduledExecutorServiceArr, c));
        for (ScheduledExecutorService scheduledExecutorService : scheduledExecutorServiceArr) {
            v.a(scheduledExecutorService);
            scheduledExecutorService.shutdownNow();
        }
    }

    public static ScheduledExecutorService b() {
        ScheduledExecutorService[] scheduledExecutorServiceArr = (ScheduledExecutorService[]) a.e.get();
        if (scheduledExecutorServiceArr == c) {
            return d;
        }
        int i = f + 1;
        if (i >= scheduledExecutorServiceArr.length) {
            i = 0;
        }
        f = i;
        return scheduledExecutorServiceArr[i];
    }
}
