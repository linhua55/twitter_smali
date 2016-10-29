package rx.internal.util;

import java.util.concurrent.ThreadFactory;

/* compiled from: Twttr */
final class v implements ThreadFactory {
    v() {
    }

    public Thread newThread(Runnable runnable) {
        throw new AssertionError("No threads allowed.");
    }
}
