package com.twitter.library.av.playback;

import com.google.android.exoplayer.upstream.Allocation;
import com.google.android.exoplayer.upstream.Allocator;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Util;
import java.util.Arrays;

/* compiled from: Twttr */
public class i implements Allocator {
    private final int a;
    private Allocation[] b;
    private final bh c;
    private j d;
    private int e;
    private int f;
    private boolean g;

    public i(int i, int i2) {
        this(i, i2, new bf());
    }

    public i(int i, int i2, bh bhVar) {
        boolean z = true;
        Assertions.checkArgument(i > 0);
        if (i2 <= 0) {
            z = false;
        }
        Assertions.checkArgument(z);
        this.c = bhVar;
        this.a = i;
        this.f = 0;
        this.b = new Allocation[(i2 > 4 ? i2 / 4 : 20)];
    }

    public synchronized Allocation allocate() {
        Allocation allocation;
        this.e++;
        if (this.f > 0) {
            Allocation[] allocationArr = this.b;
            int i = this.f - 1;
            this.f = i;
            allocation = allocationArr[i];
            this.b[this.f] = null;
        } else {
            try {
                allocation = new Allocation(this.c.a(this.a), 0);
            } catch (Throwable e) {
                this.g = true;
                if (this.d != null) {
                    this.d.a(e);
                }
                allocation = null;
            }
        }
        return allocation;
    }

    public synchronized void release(Allocation allocation) {
        Assertions.checkArgument(allocation.data.length == this.a);
        this.e--;
        if (this.f == this.b.length) {
            this.b = (Allocation[]) Arrays.copyOf(this.b, this.b.length * 2);
        }
        Allocation[] allocationArr = this.b;
        int i = this.f;
        this.f = i + 1;
        allocationArr[i] = allocation;
        notifyAll();
    }

    public synchronized void trim(int i) {
        int max = Math.max(0, Util.ceilDivide(i, this.a) - this.e);
        if (max < this.f) {
            Arrays.fill(this.b, max, this.f, null);
            this.f = max;
        }
    }

    public synchronized int getTotalBytesAllocated() {
        return this.e * this.a;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void blockWhileTotalBytesAllocatedExceeds(int r2) throws java.lang.InterruptedException {
        /*
        r1 = this;
        monitor-enter(r1);
    L_0x0001:
        r0 = r1.getTotalBytesAllocated();	 Catch:{ all -> 0x000f }
        if (r0 <= r2) goto L_0x0012;
    L_0x0007:
        r0 = r1.g;	 Catch:{ all -> 0x000f }
        if (r0 != 0) goto L_0x0012;
    L_0x000b:
        r1.wait();	 Catch:{ all -> 0x000f }
        goto L_0x0001;
    L_0x000f:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x0012:
        monitor-exit(r1);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.library.av.playback.i.blockWhileTotalBytesAllocatedExceeds(int):void");
    }

    public int getIndividualAllocationLength() {
        return this.a;
    }

    public void a(j jVar) {
        this.d = jVar;
    }
}
