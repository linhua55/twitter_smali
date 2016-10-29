package com.google.android.exoplayer.upstream;

import android.os.Handler;
import com.google.android.exoplayer.upstream.BandwidthMeter.EventListener;
import com.google.android.exoplayer.util.Assertions;
import com.google.android.exoplayer.util.Clock;
import com.google.android.exoplayer.util.SlidingPercentile;
import com.google.android.exoplayer.util.SystemClock;

/* compiled from: Twttr */
public final class DefaultBandwidthMeter implements BandwidthMeter {
    public static final int DEFAULT_MAX_WEIGHT = 2000;
    private long bitrateEstimate;
    private long bytesAccumulator;
    private final Clock clock;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private final SlidingPercentile slidingPercentile;
    private long startTimeMs;
    private int streamCount;

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.upstream.DefaultBandwidthMeter.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ long val$bitrate;
        final /* synthetic */ long val$bytes;
        final /* synthetic */ int val$elapsedMs;

        AnonymousClass1(int i, long j, long j2) {
            this.val$elapsedMs = i;
            this.val$bytes = j;
            this.val$bitrate = j2;
        }

        public void run() {
            DefaultBandwidthMeter.this.eventListener.onBandwidthSample(this.val$elapsedMs, this.val$bytes, this.val$bitrate);
        }
    }

    public DefaultBandwidthMeter() {
        this(null, null);
    }

    public DefaultBandwidthMeter(Handler handler, EventListener eventListener) {
        this(handler, eventListener, new SystemClock());
    }

    public DefaultBandwidthMeter(Handler handler, EventListener eventListener, Clock clock) {
        this(handler, eventListener, clock, DEFAULT_MAX_WEIGHT);
    }

    public DefaultBandwidthMeter(Handler handler, EventListener eventListener, int i) {
        this(handler, eventListener, new SystemClock(), i);
    }

    public DefaultBandwidthMeter(Handler handler, EventListener eventListener, Clock clock, int i) {
        this.eventHandler = handler;
        this.eventListener = eventListener;
        this.clock = clock;
        this.slidingPercentile = new SlidingPercentile(i);
        this.bitrateEstimate = -1;
    }

    public synchronized long getBitrateEstimate() {
        return this.bitrateEstimate;
    }

    public synchronized void onTransferStart() {
        if (this.streamCount == 0) {
            this.startTimeMs = this.clock.elapsedRealtime();
        }
        this.streamCount++;
    }

    public synchronized void onBytesTransferred(int i) {
        this.bytesAccumulator += (long) i;
    }

    public synchronized void onTransferEnd() {
        Assertions.checkState(this.streamCount > 0);
        long elapsedRealtime = this.clock.elapsedRealtime();
        int i = (int) (elapsedRealtime - this.startTimeMs);
        if (i > 0) {
            this.slidingPercentile.addSample((int) Math.sqrt((double) this.bytesAccumulator), (float) ((this.bytesAccumulator * 8000) / ((long) i)));
            float percentile = this.slidingPercentile.getPercentile(0.5f);
            this.bitrateEstimate = Float.isNaN(percentile) ? -1 : (long) percentile;
            notifyBandwidthSample(i, this.bytesAccumulator, this.bitrateEstimate);
        }
        this.streamCount--;
        if (this.streamCount > 0) {
            this.startTimeMs = elapsedRealtime;
        }
        this.bytesAccumulator = 0;
    }

    private void notifyBandwidthSample(int i, long j, long j2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass1(i, j, j2));
        }
    }
}
