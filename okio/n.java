package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class n extends ac {
    private ac a;

    public n(ac acVar) {
        if (acVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.a = acVar;
    }

    public final ac a() {
        return this.a;
    }

    public final n a(ac acVar) {
        if (acVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.a = acVar;
        return this;
    }

    public ac timeout(long j, TimeUnit timeUnit) {
        return this.a.timeout(j, timeUnit);
    }

    public long timeoutNanos() {
        return this.a.timeoutNanos();
    }

    public boolean hasDeadline() {
        return this.a.hasDeadline();
    }

    public long deadlineNanoTime() {
        return this.a.deadlineNanoTime();
    }

    public ac deadlineNanoTime(long j) {
        return this.a.deadlineNanoTime(j);
    }

    public ac clearTimeout() {
        return this.a.clearTimeout();
    }

    public ac clearDeadline() {
        return this.a.clearDeadline();
    }

    public void throwIfReached() throws IOException {
        this.a.throwIfReached();
    }
}
