package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class Deadline {
    public static final Deadline NONE;
    private long deadlineNanos;

    static {
        NONE = new Deadline() {
            public Deadline start(long j, TimeUnit timeUnit) {
                throw new UnsupportedOperationException();
            }

            public boolean reached() {
                return false;
            }
        };
    }

    public Deadline start(long j, TimeUnit timeUnit) {
        this.deadlineNanos = System.nanoTime() + timeUnit.toNanos(j);
        return this;
    }

    public boolean reached() {
        return System.nanoTime() - this.deadlineNanos >= 0;
    }

    public void throwIfReached() throws IOException {
        if (reached()) {
            throw new IOException("Deadline reached");
        }
    }
}
