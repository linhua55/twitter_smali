package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Choreographer.FrameCallback;
import android.view.WindowManager;

@TargetApi(16)
/* compiled from: Twttr */
public final class VideoFrameReleaseTimeHelper {
    private static final long CHOREOGRAPHER_SAMPLE_DELAY_MILLIS = 500;
    private static final long MAX_ALLOWED_DRIFT_NS = 20000000;
    private static final int MIN_FRAMES_FOR_ADJUSTMENT = 6;
    private static final long VSYNC_OFFSET_PERCENTAGE = 80;
    private long adjustedLastFrameTimeNs;
    private long frameCount;
    private boolean haveSync;
    private long lastFramePresentationTimeUs;
    private long pendingAdjustedFrameTimeNs;
    private long syncFramePresentationTimeNs;
    private long syncUnadjustedReleaseTimeNs;
    private final boolean useDefaultDisplayVsync;
    private final long vsyncDurationNs;
    private final long vsyncOffsetNs;
    private final VSyncSampler vsyncSampler;

    /* compiled from: Twttr */
    final class VSyncSampler implements Callback, FrameCallback {
        private static final int CREATE_CHOREOGRAPHER = 0;
        private static final VSyncSampler INSTANCE;
        private static final int MSG_ADD_OBSERVER = 1;
        private static final int MSG_REMOVE_OBSERVER = 2;
        private Choreographer choreographer;
        private final HandlerThread choreographerOwnerThread;
        private final Handler handler;
        private int observerCount;
        public volatile long sampledVsyncTimeNs;

        static {
            INSTANCE = new VSyncSampler();
        }

        public static VSyncSampler getInstance() {
            return INSTANCE;
        }

        private VSyncSampler() {
            this.choreographerOwnerThread = new HandlerThread("ChoreographerOwner:Handler");
            this.choreographerOwnerThread.start();
            this.handler = new Handler(this.choreographerOwnerThread.getLooper(), this);
            this.handler.sendEmptyMessage(CREATE_CHOREOGRAPHER);
        }

        public void addObserver() {
            this.handler.sendEmptyMessage(MSG_ADD_OBSERVER);
        }

        public void removeObserver() {
            this.handler.sendEmptyMessage(MSG_REMOVE_OBSERVER);
        }

        public void doFrame(long j) {
            this.sampledVsyncTimeNs = j;
            this.choreographer.postFrameCallbackDelayed(this, VideoFrameReleaseTimeHelper.CHOREOGRAPHER_SAMPLE_DELAY_MILLIS);
        }

        public boolean handleMessage(Message message) {
            switch (message.what) {
                case CREATE_CHOREOGRAPHER /*0*/:
                    createChoreographerInstanceInternal();
                    return true;
                case MSG_ADD_OBSERVER /*1*/:
                    addObserverInternal();
                    return true;
                case MSG_REMOVE_OBSERVER /*2*/:
                    removeObserverInternal();
                    return true;
                default:
                    return false;
            }
        }

        private void createChoreographerInstanceInternal() {
            this.choreographer = Choreographer.getInstance();
        }

        private void addObserverInternal() {
            this.observerCount += MSG_ADD_OBSERVER;
            if (this.observerCount == MSG_ADD_OBSERVER) {
                this.choreographer.postFrameCallback(this);
            }
        }

        private void removeObserverInternal() {
            this.observerCount--;
            if (this.observerCount == 0) {
                this.choreographer.removeFrameCallback(this);
                this.sampledVsyncTimeNs = 0;
            }
        }
    }

    public VideoFrameReleaseTimeHelper() {
        this(-1.0f, false);
    }

    public VideoFrameReleaseTimeHelper(Context context) {
        this(getDefaultDisplayRefreshRate(context), true);
    }

    private VideoFrameReleaseTimeHelper(float f, boolean z) {
        this.useDefaultDisplayVsync = z;
        if (z) {
            this.vsyncSampler = VSyncSampler.getInstance();
            this.vsyncDurationNs = (long) (1.0E9d / ((double) f));
            this.vsyncOffsetNs = (this.vsyncDurationNs * VSYNC_OFFSET_PERCENTAGE) / 100;
            return;
        }
        this.vsyncSampler = null;
        this.vsyncDurationNs = -1;
        this.vsyncOffsetNs = -1;
    }

    public void enable() {
        this.haveSync = false;
        if (this.useDefaultDisplayVsync) {
            this.vsyncSampler.addObserver();
        }
    }

    public void disable() {
        if (this.useDefaultDisplayVsync) {
            this.vsyncSampler.removeObserver();
        }
    }

    public long adjustReleaseTime(long j, long j2) {
        long j3;
        long j4;
        long j5 = j * 1000;
        if (this.haveSync) {
            if (j != this.lastFramePresentationTimeUs) {
                this.frameCount++;
                this.adjustedLastFrameTimeNs = this.pendingAdjustedFrameTimeNs;
            }
            if (this.frameCount >= 6) {
                j3 = this.adjustedLastFrameTimeNs + ((j5 - this.syncFramePresentationTimeNs) / this.frameCount);
                if (isDriftTooLarge(j3, j2)) {
                    this.haveSync = false;
                    j4 = j2;
                    j3 = j5;
                } else {
                    j4 = (this.syncUnadjustedReleaseTimeNs + j3) - this.syncFramePresentationTimeNs;
                }
                if (!this.haveSync) {
                    this.syncFramePresentationTimeNs = j5;
                    this.syncUnadjustedReleaseTimeNs = j2;
                    this.frameCount = 0;
                    this.haveSync = true;
                    onSynced();
                }
                this.lastFramePresentationTimeUs = j;
                this.pendingAdjustedFrameTimeNs = j3;
                return (this.vsyncSampler == null || this.vsyncSampler.sampledVsyncTimeNs == 0) ? j4 : closestVsync(j4, this.vsyncSampler.sampledVsyncTimeNs, this.vsyncDurationNs) - this.vsyncOffsetNs;
            } else if (isDriftTooLarge(j5, j2)) {
                this.haveSync = false;
            }
        }
        j4 = j2;
        j3 = j5;
        if (this.haveSync) {
            this.syncFramePresentationTimeNs = j5;
            this.syncUnadjustedReleaseTimeNs = j2;
            this.frameCount = 0;
            this.haveSync = true;
            onSynced();
        }
        this.lastFramePresentationTimeUs = j;
        this.pendingAdjustedFrameTimeNs = j3;
        if (this.vsyncSampler == null) {
            return j4;
        }
    }

    protected void onSynced() {
    }

    private boolean isDriftTooLarge(long j, long j2) {
        return Math.abs((j2 - this.syncUnadjustedReleaseTimeNs) - (j - this.syncFramePresentationTimeNs)) > MAX_ALLOWED_DRIFT_NS;
    }

    private static long closestVsync(long j, long j2, long j3) {
        long j4;
        long j5 = (((j - j2) / j3) * j3) + j2;
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j4 = j5;
            j5 += j3;
        }
        if (j5 - j < j - j4) {
            return j5;
        }
        return j4;
    }

    private static float getDefaultDisplayRefreshRate(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRefreshRate();
    }
}
