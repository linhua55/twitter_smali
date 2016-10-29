package com.google.android.exoplayer;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.exoplayer.MediaCodecTrackRenderer.EventListener;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.MimeTypes;
import com.google.android.exoplayer.util.TraceUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import java.nio.ByteBuffer;

@TargetApi(16)
/* compiled from: Twttr */
public class MediaCodecVideoTrackRenderer extends MediaCodecTrackRenderer {
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    public static final int MSG_SET_SURFACE = 1;
    private final long allowedJoiningTimeUs;
    private int consecutiveDroppedFrameCount;
    private int currentHeight;
    private float currentPixelWidthHeightRatio;
    private int currentUnappliedRotationDegrees;
    private int currentWidth;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrameCount;
    private final EventListener eventListener;
    private final VideoFrameReleaseTimeHelper frameReleaseTimeHelper;
    private long joiningDeadlineUs;
    private int lastReportedHeight;
    private float lastReportedPixelWidthHeightRatio;
    private int lastReportedUnappliedRotationDegrees;
    private int lastReportedWidth;
    private final int maxDroppedFrameCountToNotify;
    private float pendingPixelWidthHeightRatio;
    private int pendingRotationDegrees;
    private boolean renderedFirstFrame;
    private boolean reportedDrawnToSurface;
    private Surface surface;
    private final int videoScalingMode;

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.MediaCodecVideoTrackRenderer.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ int val$currentHeight;
        final /* synthetic */ float val$currentPixelWidthHeightRatio;
        final /* synthetic */ int val$currentUnappliedRotationDegrees;
        final /* synthetic */ int val$currentWidth;

        AnonymousClass1(int i, int i2, int i3, float f) {
            this.val$currentWidth = i;
            this.val$currentHeight = i2;
            this.val$currentUnappliedRotationDegrees = i3;
            this.val$currentPixelWidthHeightRatio = f;
        }

        public void run() {
            MediaCodecVideoTrackRenderer.this.eventListener.onVideoSizeChanged(this.val$currentWidth, this.val$currentHeight, this.val$currentUnappliedRotationDegrees, this.val$currentPixelWidthHeightRatio);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.MediaCodecVideoTrackRenderer.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ Surface val$surface;

        AnonymousClass2(Surface surface) {
            this.val$surface = surface;
        }

        public void run() {
            MediaCodecVideoTrackRenderer.this.eventListener.onDrawnToSurface(this.val$surface);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.MediaCodecVideoTrackRenderer.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ int val$countToNotify;
        final /* synthetic */ long val$elapsedToNotify;

        AnonymousClass3(int i, long j) {
            this.val$countToNotify = i;
            this.val$elapsedToNotify = j;
        }

        public void run() {
            MediaCodecVideoTrackRenderer.this.eventListener.onDroppedFrames(this.val$countToNotify, this.val$elapsedToNotify);
        }
    }

    public MediaCodecVideoTrackRenderer(Context context, SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, int i) {
        this(context, sampleSource, mediaCodecSelector, i, 0);
    }

    public MediaCodecVideoTrackRenderer(Context context, SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, int i, long j) {
        this(context, sampleSource, mediaCodecSelector, i, j, null, null, -1);
    }

    public MediaCodecVideoTrackRenderer(Context context, SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, int i, long j, Handler handler, EventListener eventListener, int i2) {
        this(context, sampleSource, mediaCodecSelector, i, j, null, false, handler, eventListener, i2);
    }

    public MediaCodecVideoTrackRenderer(Context context, SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, int i, long j, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener, int i2) {
        super(sampleSource, mediaCodecSelector, drmSessionManager, z, handler, (EventListener) eventListener);
        this.frameReleaseTimeHelper = new VideoFrameReleaseTimeHelper(context);
        this.videoScalingMode = i;
        this.allowedJoiningTimeUs = 1000 * j;
        this.eventListener = eventListener;
        this.maxDroppedFrameCountToNotify = i2;
        this.joiningDeadlineUs = -1;
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.pendingPixelWidthHeightRatio = -1.0f;
        this.lastReportedWidth = -1;
        this.lastReportedHeight = -1;
        this.lastReportedPixelWidthHeightRatio = -1.0f;
    }

    protected boolean handlesTrack(MediaCodecSelector mediaCodecSelector, MediaFormat mediaFormat) throws MediaCodecUtil$DecoderQueryException {
        String str = mediaFormat.mimeType;
        if (!MimeTypes.isVideo(str)) {
            return false;
        }
        if (MimeTypes.VIDEO_UNKNOWN.equals(str) || mediaCodecSelector.getDecoderInfo(str, false) != null) {
            return true;
        }
        return false;
    }

    protected void onEnabled(int i, long j, boolean z) throws ExoPlaybackException {
        super.onEnabled(i, j, z);
        if (z && this.allowedJoiningTimeUs > 0) {
            this.joiningDeadlineUs = (SystemClock.elapsedRealtime() * 1000) + this.allowedJoiningTimeUs;
        }
        this.frameReleaseTimeHelper.enable();
    }

    protected void onDiscontinuity(long j) throws ExoPlaybackException {
        super.onDiscontinuity(j);
        this.renderedFirstFrame = false;
        this.consecutiveDroppedFrameCount = 0;
        this.joiningDeadlineUs = -1;
    }

    protected boolean isReady() {
        if (super.isReady() && (this.renderedFirstFrame || !codecInitialized() || getSourceState() == 2)) {
            this.joiningDeadlineUs = -1;
            return true;
        } else if (this.joiningDeadlineUs == -1) {
            return false;
        } else {
            if (SystemClock.elapsedRealtime() * 1000 < this.joiningDeadlineUs) {
                return true;
            }
            this.joiningDeadlineUs = -1;
            return false;
        }
    }

    protected void onStarted() {
        super.onStarted();
        this.droppedFrameCount = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
    }

    protected void onStopped() {
        this.joiningDeadlineUs = -1;
        maybeNotifyDroppedFrameCount();
        super.onStopped();
    }

    protected void onDisabled() throws ExoPlaybackException {
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.pendingPixelWidthHeightRatio = -1.0f;
        this.lastReportedWidth = -1;
        this.lastReportedHeight = -1;
        this.lastReportedPixelWidthHeightRatio = -1.0f;
        this.frameReleaseTimeHelper.disable();
        super.onDisabled();
    }

    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        if (i == MSG_SET_SURFACE) {
            setSurface((Surface) obj);
        } else {
            super.handleMessage(i, obj);
        }
    }

    private void setSurface(Surface surface) throws ExoPlaybackException {
        if (this.surface != surface) {
            this.surface = surface;
            this.reportedDrawnToSurface = false;
            int state = getState();
            if (state == 2 || state == 3) {
                releaseCodec();
                maybeInitCodec();
            }
        }
    }

    protected boolean shouldInitCodec() {
        return super.shouldInitCodec() && this.surface != null && this.surface.isValid();
    }

    protected void configureCodec(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        maybeSetMaxInputSize(mediaFormat, z);
        mediaCodec.configure(mediaFormat, this.surface, mediaCrypto, 0);
    }

    protected void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) throws ExoPlaybackException {
        super.onInputFormatChanged(mediaFormatHolder);
        this.pendingPixelWidthHeightRatio = mediaFormatHolder.format.pixelWidthHeightRatio == -1.0f ? 1.0f : mediaFormatHolder.format.pixelWidthHeightRatio;
        this.pendingRotationDegrees = mediaFormatHolder.format.rotationDegrees == -1 ? 0 : mediaFormatHolder.format.rotationDegrees;
    }

    protected final boolean haveRenderedFirstFrame() {
        return this.renderedFirstFrame;
    }

    protected void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        int integer;
        Object obj = (mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP)) ? MSG_SET_SURFACE : null;
        this.currentWidth = obj != null ? (mediaFormat.getInteger(KEY_CROP_RIGHT) - mediaFormat.getInteger(KEY_CROP_LEFT)) + MSG_SET_SURFACE : mediaFormat.getInteger("width");
        if (obj != null) {
            integer = (mediaFormat.getInteger(KEY_CROP_BOTTOM) - mediaFormat.getInteger(KEY_CROP_TOP)) + MSG_SET_SURFACE;
        } else {
            integer = mediaFormat.getInteger("height");
        }
        this.currentHeight = integer;
        this.currentPixelWidthHeightRatio = this.pendingPixelWidthHeightRatio;
        if (Util.SDK_INT < 21) {
            this.currentUnappliedRotationDegrees = this.pendingRotationDegrees;
        } else if (this.pendingRotationDegrees == 90 || this.pendingRotationDegrees == 270) {
            integer = this.currentWidth;
            this.currentWidth = this.currentHeight;
            this.currentHeight = integer;
            this.currentPixelWidthHeightRatio = 1.0f / this.currentPixelWidthHeightRatio;
        }
        mediaCodec.setVideoScalingMode(this.videoScalingMode);
    }

    protected boolean canReconfigureCodec(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaFormat mediaFormat2) {
        return mediaFormat2.mimeType.equals(mediaFormat.mimeType) && (z || (mediaFormat.width == mediaFormat2.width && mediaFormat.height == mediaFormat2.height));
    }

    protected boolean processOutputBuffer(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, BufferInfo bufferInfo, int i, boolean z) {
        if (z) {
            skipOutputBuffer(mediaCodec, i);
            this.consecutiveDroppedFrameCount = 0;
            return true;
        } else if (!this.renderedFirstFrame) {
            if (Util.SDK_INT >= 21) {
                renderOutputBufferV21(mediaCodec, i, System.nanoTime());
            } else {
                renderOutputBuffer(mediaCodec, i);
            }
            this.consecutiveDroppedFrameCount = 0;
            return true;
        } else if (getState() != 3) {
            return false;
        } else {
            long elapsedRealtime = (bufferInfo.presentationTimeUs - j) - ((SystemClock.elapsedRealtime() * 1000) - j2);
            long nanoTime = System.nanoTime();
            elapsedRealtime = this.frameReleaseTimeHelper.adjustReleaseTime(bufferInfo.presentationTimeUs, (elapsedRealtime * 1000) + nanoTime);
            nanoTime = (elapsedRealtime - nanoTime) / 1000;
            if (nanoTime < -30000) {
                dropOutputBuffer(mediaCodec, i);
                return true;
            }
            if (Util.SDK_INT >= 21) {
                if (nanoTime < 50000) {
                    renderOutputBufferV21(mediaCodec, i, elapsedRealtime);
                    this.consecutiveDroppedFrameCount = 0;
                    return true;
                }
            } else if (nanoTime < 30000) {
                if (nanoTime > 11000) {
                    try {
                        Thread.sleep((nanoTime - 10000) / 1000);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                }
                renderOutputBuffer(mediaCodec, i);
                this.consecutiveDroppedFrameCount = 0;
                return true;
            }
            return false;
        }
    }

    protected void skipOutputBuffer(MediaCodec mediaCodec, int i) {
        TraceUtil.beginSection("skipVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        CodecCounters codecCounters = this.codecCounters;
        codecCounters.skippedOutputBufferCount += MSG_SET_SURFACE;
    }

    protected void dropOutputBuffer(MediaCodec mediaCodec, int i) {
        TraceUtil.beginSection("dropVideoBuffer");
        mediaCodec.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        CodecCounters codecCounters = this.codecCounters;
        codecCounters.droppedOutputBufferCount += MSG_SET_SURFACE;
        this.droppedFrameCount += MSG_SET_SURFACE;
        this.consecutiveDroppedFrameCount += MSG_SET_SURFACE;
        this.codecCounters.maxConsecutiveDroppedOutputBufferCount = Math.max(this.consecutiveDroppedFrameCount, this.codecCounters.maxConsecutiveDroppedOutputBufferCount);
        if (this.droppedFrameCount == this.maxDroppedFrameCountToNotify) {
            maybeNotifyDroppedFrameCount();
        }
    }

    protected void renderOutputBuffer(MediaCodec mediaCodec, int i) {
        maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, true);
        TraceUtil.endSection();
        CodecCounters codecCounters = this.codecCounters;
        codecCounters.renderedOutputBufferCount += MSG_SET_SURFACE;
        this.renderedFirstFrame = true;
        maybeNotifyDrawnToSurface();
    }

    @TargetApi(21)
    protected void renderOutputBufferV21(MediaCodec mediaCodec, int i, long j) {
        maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodec.releaseOutputBuffer(i, j);
        TraceUtil.endSection();
        CodecCounters codecCounters = this.codecCounters;
        codecCounters.renderedOutputBufferCount += MSG_SET_SURFACE;
        this.renderedFirstFrame = true;
        maybeNotifyDrawnToSurface();
    }

    @SuppressLint({"InlinedApi"})
    private void maybeSetMaxInputSize(MediaFormat mediaFormat, boolean z) {
        if (!mediaFormat.containsKey("max-input-size")) {
            int integer = mediaFormat.getInteger("height");
            if (z && mediaFormat.containsKey("max-height")) {
                integer = Math.max(integer, mediaFormat.getInteger("max-height"));
            }
            int integer2 = mediaFormat.getInteger("width");
            if (z && mediaFormat.containsKey("max-width")) {
                integer2 = Math.max(integer, mediaFormat.getInteger("max-width"));
            }
            String string = mediaFormat.getString("mime");
            Object obj = -1;
            int i;
            switch (string.hashCode()) {
                case -1664118616:
                    if (string.equals(MimeTypes.VIDEO_H263)) {
                        obj = null;
                        break;
                    }
                    break;
                case -1662541442:
                    if (string.equals(MimeTypes.VIDEO_H265)) {
                        i = 4;
                        break;
                    }
                    break;
                case 1187890754:
                    if (string.equals(MimeTypes.VIDEO_MP4V)) {
                        obj = MSG_SET_SURFACE;
                        break;
                    }
                    break;
                case 1331836730:
                    if (string.equals(MimeTypes.VIDEO_H264)) {
                        i = 2;
                        break;
                    }
                    break;
                case 1599127256:
                    if (string.equals(MimeTypes.VIDEO_VP8)) {
                        obj = 3;
                        break;
                    }
                    break;
                case 1599127257:
                    if (string.equals(MimeTypes.VIDEO_VP9)) {
                        obj = 5;
                        break;
                    }
                    break;
            }
            switch (obj) {
                case Util.TYPE_DASH /*0*/:
                case MSG_SET_SURFACE /*1*/:
                    integer2 = integer * integer2;
                    integer = 2;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    if (!"BRAVIA 4K 2015".equals(Util.MODEL)) {
                        integer2 = ((((integer + 15) / 16) * ((integer2 + 15) / 16)) * 16) * 16;
                        integer = 2;
                        break;
                    }
                    return;
                case Util.TYPE_OTHER /*3*/:
                    integer2 = integer * integer2;
                    integer = 2;
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                case EbmlReader.TYPE_FLOAT /*5*/:
                    integer2 = integer * integer2;
                    integer = 4;
                    break;
                default:
                    return;
            }
            mediaFormat.setInteger("max-input-size", (integer2 * 3) / (integer * 2));
        }
    }

    private void maybeNotifyVideoSizeChanged() {
        if (this.eventHandler != null && this.eventListener != null) {
            if (this.lastReportedWidth != this.currentWidth || this.lastReportedHeight != this.currentHeight || this.lastReportedUnappliedRotationDegrees != this.currentUnappliedRotationDegrees || this.lastReportedPixelWidthHeightRatio != this.currentPixelWidthHeightRatio) {
                int i = this.currentWidth;
                int i2 = this.currentHeight;
                int i3 = this.currentUnappliedRotationDegrees;
                float f = this.currentPixelWidthHeightRatio;
                this.eventHandler.post(new AnonymousClass1(i, i2, i3, f));
                this.lastReportedWidth = i;
                this.lastReportedHeight = i2;
                this.lastReportedUnappliedRotationDegrees = i3;
                this.lastReportedPixelWidthHeightRatio = f;
            }
        }
    }

    private void maybeNotifyDrawnToSurface() {
        if (this.eventHandler != null && this.eventListener != null && !this.reportedDrawnToSurface) {
            this.eventHandler.post(new AnonymousClass2(this.surface));
            this.reportedDrawnToSurface = true;
        }
    }

    private void maybeNotifyDroppedFrameCount() {
        if (this.eventHandler != null && this.eventListener != null && this.droppedFrameCount != 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.eventHandler.post(new AnonymousClass3(this.droppedFrameCount, elapsedRealtime - this.droppedFrameAccumulationStartTimeMs));
            this.droppedFrameCount = 0;
            this.droppedFrameAccumulationStartTimeMs = elapsedRealtime;
        }
    }
}
