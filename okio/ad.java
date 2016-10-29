package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
final class ad extends ac {
    ad() {
    }

    public ac timeout(long j, TimeUnit timeUnit) {
        return this;
    }

    public ac deadlineNanoTime(long j) {
        return this;
    }

    public void throwIfReached() throws IOException {
    }
}
