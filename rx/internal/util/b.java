package rx.internal.util;

import java.util.concurrent.CountDownLatch;
import rx.an;

/* compiled from: Twttr */
public final class b {
    public static void a(CountDownLatch countDownLatch, an anVar) {
        if (countDownLatch.getCount() != 0) {
            try {
                countDownLatch.await();
            } catch (Throwable e) {
                anVar.K_();
                Thread.currentThread().interrupt();
                throw new RuntimeException("Interrupted while waiting for subscription to complete.", e);
            }
        }
    }
}
