package defpackage;

import android.net.TrafficStats;
import android.os.Process;
import bcd;
import java.util.Timer;

/* compiled from: Twttr */
/* renamed from: bcc */
public class bcc {
    private static bcc a;
    private final int b;
    private long c;
    private boolean d;

    private bcc() {
        this.d = false;
        this.b = Process.myUid();
        a(true);
        new Timer().scheduleAtFixedRate(new bcd(this), 500, 500);
    }

    public static synchronized bcc a() {
        bcc bcc;
        synchronized (bcc.class) {
            if (a == null) {
                a = new bcc();
            }
            bcc = a;
        }
        return bcc;
    }

    public synchronized void a(boolean z) {
        this.c = z ? TrafficStats.getUidRxBytes(this.b) + TrafficStats.getUidTxBytes(this.b) : 0;
        this.d = false;
    }

    public synchronized void b() {
        if (!this.d) {
            long max = Math.max(1048576 - ((TrafficStats.getUidRxBytes(this.b) + TrafficStats.getUidTxBytes(this.b)) - this.c), 0);
            bmw.a().a(bmx.a(null, 5, (int) ((((float) max) / 1048576.0f) * 10000.0f)));
            this.d = max == 0;
        }
    }
}
