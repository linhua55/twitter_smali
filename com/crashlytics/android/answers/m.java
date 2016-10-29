package com.crashlytics.android.answers;

import com.google.android.exoplayer.hls.HlsChunkSource;
import io.fabric.sdk.android.f;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
class m {
    final AtomicReference<ScheduledFuture<?>> a;
    boolean b;
    private final ScheduledExecutorService c;
    private final List<o> d;
    private volatile boolean e;

    public m(ScheduledExecutorService scheduledExecutorService) {
        this.d = new ArrayList();
        this.e = true;
        this.a = new AtomicReference();
        this.b = true;
        this.c = scheduledExecutorService;
    }

    public void a(boolean z) {
        this.e = z;
    }

    private void c() {
        for (o a : this.d) {
            a.a();
        }
    }

    public void a(o oVar) {
        this.d.add(oVar);
    }

    public void a() {
        this.b = false;
        ScheduledFuture scheduledFuture = (ScheduledFuture) this.a.getAndSet(null);
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
    }

    public void b() {
        if (this.e && !this.b) {
            this.b = true;
            try {
                this.a.compareAndSet(null, this.c.schedule(new n(this), HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS, TimeUnit.MILLISECONDS));
            } catch (Throwable e) {
                f.h().a("Answers", "Failed to schedule background detector", e);
            }
        }
    }
}
