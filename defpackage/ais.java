package defpackage;

import java.util.concurrent.ThreadFactory;

/* compiled from: Twttr */
/* renamed from: ais */
final class ais implements ThreadFactory {
    ais() {
    }

    public Thread newThread(Runnable runnable) {
        return new aji(air.class.getSimpleName(), runnable);
    }
}
