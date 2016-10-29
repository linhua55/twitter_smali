package com.google.android.gms.common.stats;

import android.support.v4.util.SimpleArrayMap;
import com.google.android.exoplayer.hls.HlsChunkSource;

public class g {
    private final long a;
    private final int b;
    private final SimpleArrayMap<String, Long> c;

    public g() {
        this.a = HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS;
        this.b = 10;
        this.c = new SimpleArrayMap(10);
    }

    public g(int i, long j) {
        this.a = j;
        this.b = i;
        this.c = new SimpleArrayMap();
    }

    private void a(long j, long j2) {
        for (int size = this.c.size() - 1; size >= 0; size--) {
            if (j2 - ((Long) this.c.valueAt(size)).longValue() > j) {
                this.c.removeAt(size);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Long a(java.lang.String r8) {
        /*
        r7 = this;
        r2 = android.os.SystemClock.elapsedRealtime();
        r0 = r7.a;
        monitor-enter(r7);
    L_0x0007:
        r4 = r7.c;	 Catch:{ all -> 0x003f }
        r4 = r4.size();	 Catch:{ all -> 0x003f }
        r5 = r7.b;	 Catch:{ all -> 0x003f }
        if (r4 < r5) goto L_0x0042;
    L_0x0011:
        r7.a(r0, r2);	 Catch:{ all -> 0x003f }
        r4 = 2;
        r0 = r0 / r4;
        r4 = "ConnectionTracker";
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x003f }
        r5.<init>();	 Catch:{ all -> 0x003f }
        r6 = "The max capacity ";
        r5 = r5.append(r6);	 Catch:{ all -> 0x003f }
        r6 = r7.b;	 Catch:{ all -> 0x003f }
        r5 = r5.append(r6);	 Catch:{ all -> 0x003f }
        r6 = " is not enough. Current durationThreshold is: ";
        r5 = r5.append(r6);	 Catch:{ all -> 0x003f }
        r5 = r5.append(r0);	 Catch:{ all -> 0x003f }
        r5 = r5.toString();	 Catch:{ all -> 0x003f }
        android.util.Log.w(r4, r5);	 Catch:{ all -> 0x003f }
        goto L_0x0007;
    L_0x003f:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x003f }
        throw r0;
    L_0x0042:
        r0 = r7.c;	 Catch:{ all -> 0x003f }
        r1 = java.lang.Long.valueOf(r2);	 Catch:{ all -> 0x003f }
        r0 = r0.put(r8, r1);	 Catch:{ all -> 0x003f }
        r0 = (java.lang.Long) r0;	 Catch:{ all -> 0x003f }
        monitor-exit(r7);	 Catch:{ all -> 0x003f }
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.stats.g.a(java.lang.String):java.lang.Long");
    }

    public boolean b(String str) {
        boolean z;
        synchronized (this) {
            z = this.c.remove(str) != null;
        }
        return z;
    }
}
