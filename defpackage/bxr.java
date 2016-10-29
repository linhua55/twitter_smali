package defpackage;

import android.net.TrafficStats;
import android.os.AsyncTask;
import android.os.Process;
import com.twitter.config.d;
import com.twitter.library.network.DataUsageEvent;
import com.twitter.library.network.DataUsageEvent.Type;
import com.twitter.library.network.b;
import com.twitter.util.concurrent.c;
import com.twitter.util.concurrent.j;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.z;

/* compiled from: Twttr */
/* renamed from: bxr */
public class bxr {
    private long a;
    private long b;
    private long c;
    private final z<DataUsageEvent> d;

    public bxr() {
        this.a = -1;
        this.b = -1;
        this.c = 0;
        this.d = new bxs(this);
    }

    static /* synthetic */ long a(bxr bxr, long j) {
        long j2 = bxr.c + j;
        bxr.c = j2;
        return j2;
    }

    public void a() {
        this.b = a(Process.myUid());
        this.a = a(Process.getUidForName("media"));
        this.c = 0;
        b.a().a(this.d);
    }

    public long b() {
        b.a().b(this.d);
        long a = a(Process.myUid());
        long a2 = a(Process.getUidForName("media"));
        if (!(this.a == -1 || a2 == -1)) {
            a2 -= this.a;
            if (a2 > 0) {
                a(a2);
                return a2;
            }
        }
        if (!(this.b == -1 || a == -1)) {
            a2 = (a - this.b) - this.c;
            if (a2 > 0) {
                a(a2);
                return a2;
            }
        }
        return -1;
    }

    public j<Long> c() {
        return new c().a(new bxt(this)).a(AsyncTask.THREAD_POOL_EXECUTOR).a();
    }

    private long a(int i) {
        long uidRxBytes = TrafficStats.getUidRxBytes(i);
        if (uidRxBytes == -1) {
            uidRxBytes = TrafficStats.getUidTcpRxBytes(i) + TrafficStats.getUidUdpRxBytes(i);
        }
        if (uidRxBytes < 0) {
            return -1;
        }
        return uidRxBytes;
    }

    private void a(long j) {
        if (d.a("video_data_usage_tracking_enabled")) {
            b.a().a(new DataUsageEvent(Type.VIDEO, TelephonyUtil.i().c(), j, 0));
        }
    }
}
