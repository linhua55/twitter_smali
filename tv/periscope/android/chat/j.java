package tv.periscope.android.chat;

import android.os.SystemClock;
import java.util.Comparator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import tv.periscope.model.chat.MessageType.Throttle;

/* compiled from: Twttr */
class j<T> {
    public final BlockingQueue<T> a;
    public final Throttle b;
    private long c;

    public j(Throttle throttle, Comparator<T> comparator) {
        this.a = new PriorityBlockingQueue(11, comparator);
        this.b = throttle;
    }

    public boolean a() {
        if (this.b.duration > 0 && f() < this.b.duration) {
            return false;
        }
        return true;
    }

    private long f() {
        return SystemClock.elapsedRealtime() - this.c;
    }

    public long b() {
        return this.b.duration - f();
    }

    public long c() {
        this.c = SystemClock.elapsedRealtime();
        return this.b.duration;
    }

    public void d() {
        this.a.clear();
    }

    public int e() {
        return this.a.size();
    }
}
