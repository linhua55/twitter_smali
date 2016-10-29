package com.google.android.exoplayer;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.media.PlaybackParams;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer.MediaCodecTrackRenderer.EventListener;
import com.google.android.exoplayer.audio.AudioCapabilities;
import com.google.android.exoplayer.audio.AudioTrack;
import com.google.android.exoplayer.audio.AudioTrack.InitializationException;
import com.google.android.exoplayer.audio.AudioTrack.WriteException;
import com.google.android.exoplayer.drm.DrmSessionManager;
import com.google.android.exoplayer.util.MimeTypes;
import java.nio.ByteBuffer;

@TargetApi(16)
/* compiled from: Twttr */
public class MediaCodecAudioTrackRenderer extends MediaCodecTrackRenderer implements MediaClock {
    public static final int MSG_SET_PLAYBACK_PARAMS = 2;
    public static final int MSG_SET_VOLUME = 1;
    private boolean allowPositionDiscontinuity;
    private int audioSessionId;
    private final AudioTrack audioTrack;
    private boolean audioTrackHasData;
    private long currentPositionUs;
    private final EventListener eventListener;
    private long lastFeedElapsedRealtimeMs;
    private boolean passthroughEnabled;
    private MediaFormat passthroughMediaFormat;
    private int pcmEncoding;

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.MediaCodecAudioTrackRenderer.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ InitializationException val$e;

        AnonymousClass1(InitializationException initializationException) {
            this.val$e = initializationException;
        }

        public void run() {
            MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackInitializationError(this.val$e);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.MediaCodecAudioTrackRenderer.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ WriteException val$e;

        AnonymousClass2(WriteException writeException) {
            this.val$e = writeException;
        }

        public void run() {
            MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackWriteError(this.val$e);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.MediaCodecAudioTrackRenderer.3 */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ int val$bufferSize;
        final /* synthetic */ long val$bufferSizeMs;
        final /* synthetic */ long val$elapsedSinceLastFeedMs;

        AnonymousClass3(int i, long j, long j2) {
            this.val$bufferSize = i;
            this.val$bufferSizeMs = j;
            this.val$elapsedSinceLastFeedMs = j2;
        }

        public void run() {
            MediaCodecAudioTrackRenderer.this.eventListener.onAudioTrackUnderrun(this.val$bufferSize, this.val$bufferSizeMs, this.val$elapsedSinceLastFeedMs);
        }
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector) {
        this(sampleSource, mediaCodecSelector, null, true);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean z) {
        this(sampleSource, mediaCodecSelector, drmSessionManager, z, null, null);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, Handler handler, EventListener eventListener) {
        this(sampleSource, mediaCodecSelector, null, true, handler, eventListener);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener) {
        this(sampleSource, mediaCodecSelector, drmSessionManager, z, handler, eventListener, null, 3);
    }

    public MediaCodecAudioTrackRenderer(SampleSource sampleSource, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener, AudioCapabilities audioCapabilities, int i) {
        SampleSource[] sampleSourceArr = new SampleSource[MSG_SET_VOLUME];
        sampleSourceArr[0] = sampleSource;
        this(sampleSourceArr, mediaCodecSelector, drmSessionManager, z, handler, eventListener, audioCapabilities, i);
    }

    public MediaCodecAudioTrackRenderer(SampleSource[] sampleSourceArr, MediaCodecSelector mediaCodecSelector, DrmSessionManager drmSessionManager, boolean z, Handler handler, EventListener eventListener, AudioCapabilities audioCapabilities, int i) {
        super(sampleSourceArr, mediaCodecSelector, drmSessionManager, z, handler, (EventListener) eventListener);
        this.eventListener = eventListener;
        this.audioSessionId = 0;
        this.audioTrack = new AudioTrack(audioCapabilities, i);
    }

    protected boolean handlesTrack(MediaCodecSelector mediaCodecSelector, MediaFormat mediaFormat) throws MediaCodecUtil$DecoderQueryException {
        String str = mediaFormat.mimeType;
        if (!MimeTypes.isAudio(str)) {
            return false;
        }
        if (MimeTypes.AUDIO_UNKNOWN.equals(str) || ((allowPassthrough(str) && mediaCodecSelector.getPassthroughDecoderInfo() != null) || mediaCodecSelector.getDecoderInfo(str, false) != null)) {
            return true;
        }
        return false;
    }

    protected DecoderInfo getDecoderInfo(MediaCodecSelector mediaCodecSelector, String str, boolean z) throws MediaCodecUtil$DecoderQueryException {
        if (allowPassthrough(str)) {
            DecoderInfo passthroughDecoderInfo = mediaCodecSelector.getPassthroughDecoderInfo();
            if (passthroughDecoderInfo != null) {
                this.passthroughEnabled = true;
                return passthroughDecoderInfo;
            }
        }
        this.passthroughEnabled = false;
        return super.getDecoderInfo(mediaCodecSelector, str, z);
    }

    protected boolean allowPassthrough(String str) {
        return this.audioTrack.isPassthroughSupported(str);
    }

    protected void configureCodec(MediaCodec mediaCodec, boolean z, MediaFormat mediaFormat, MediaCrypto mediaCrypto) {
        String string = mediaFormat.getString("mime");
        if (this.passthroughEnabled) {
            mediaFormat.setString("mime", MimeTypes.AUDIO_RAW);
            mediaCodec.configure(mediaFormat, null, mediaCrypto, 0);
            mediaFormat.setString("mime", string);
            this.passthroughMediaFormat = mediaFormat;
            return;
        }
        mediaCodec.configure(mediaFormat, null, mediaCrypto, 0);
        this.passthroughMediaFormat = null;
    }

    protected MediaClock getMediaClock() {
        return this;
    }

    protected void onInputFormatChanged(MediaFormatHolder mediaFormatHolder) throws ExoPlaybackException {
        super.onInputFormatChanged(mediaFormatHolder);
        this.pcmEncoding = MimeTypes.AUDIO_RAW.equals(mediaFormatHolder.format.mimeType) ? mediaFormatHolder.format.pcmEncoding : MSG_SET_PLAYBACK_PARAMS;
    }

    protected void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        Object obj = this.passthroughMediaFormat != null ? MSG_SET_VOLUME : null;
        String string = obj != null ? this.passthroughMediaFormat.getString("mime") : MimeTypes.AUDIO_RAW;
        if (obj != null) {
            mediaFormat = this.passthroughMediaFormat;
        }
        this.audioTrack.configure(string, mediaFormat.getInteger("channel-count"), mediaFormat.getInteger("sample-rate"), this.pcmEncoding);
    }

    protected void onAudioSessionId(int i) {
    }

    protected void onStarted() {
        super.onStarted();
        this.audioTrack.play();
    }

    protected void onStopped() {
        this.audioTrack.pause();
        super.onStopped();
    }

    protected boolean isEnded() {
        return super.isEnded() && !this.audioTrack.hasPendingData();
    }

    protected boolean isReady() {
        return this.audioTrack.hasPendingData() || super.isReady();
    }

    public long getPositionUs() {
        long currentPositionUs = this.audioTrack.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                currentPositionUs = Math.max(this.currentPositionUs, currentPositionUs);
            }
            this.currentPositionUs = currentPositionUs;
            this.allowPositionDiscontinuity = false;
        }
        return this.currentPositionUs;
    }

    protected void onDisabled() throws ExoPlaybackException {
        this.audioSessionId = 0;
        try {
            this.audioTrack.release();
        } finally {
            super.onDisabled();
        }
    }

    protected void onDiscontinuity(long j) throws ExoPlaybackException {
        super.onDiscontinuity(j);
        this.audioTrack.reset();
        this.currentPositionUs = j;
        this.allowPositionDiscontinuity = true;
    }

    protected boolean processOutputBuffer(long j, long j2, MediaCodec mediaCodec, ByteBuffer byteBuffer, BufferInfo bufferInfo, int i, boolean z) throws ExoPlaybackException {
        if (this.passthroughEnabled && (bufferInfo.flags & MSG_SET_PLAYBACK_PARAMS) != 0) {
            mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } else if (z) {
            mediaCodec.releaseOutputBuffer(i, false);
            r0 = this.codecCounters;
            r0.skippedOutputBufferCount += MSG_SET_VOLUME;
            this.audioTrack.handleDiscontinuity();
            return true;
        } else {
            if (this.audioTrack.isInitialized()) {
                boolean z2 = this.audioTrackHasData;
                this.audioTrackHasData = this.audioTrack.hasPendingData();
                if (z2 && !this.audioTrackHasData && getState() == 3) {
                    long elapsedRealtime = SystemClock.elapsedRealtime() - this.lastFeedElapsedRealtimeMs;
                    long bufferSizeUs = this.audioTrack.getBufferSizeUs();
                    notifyAudioTrackUnderrun(this.audioTrack.getBufferSize(), bufferSizeUs == -1 ? -1 : bufferSizeUs / 1000, elapsedRealtime);
                }
            } else {
                try {
                    if (this.audioSessionId != 0) {
                        this.audioTrack.initialize(this.audioSessionId);
                    } else {
                        this.audioSessionId = this.audioTrack.initialize();
                        onAudioSessionId(this.audioSessionId);
                    }
                    this.audioTrackHasData = false;
                    if (getState() == 3) {
                        this.audioTrack.play();
                    }
                } catch (Throwable e) {
                    notifyAudioTrackInitializationError(e);
                    throw new ExoPlaybackException(e);
                }
            }
            try {
                int handleBuffer = this.audioTrack.handleBuffer(byteBuffer, bufferInfo.offset, bufferInfo.size, bufferInfo.presentationTimeUs);
                this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
                if ((handleBuffer & MSG_SET_VOLUME) != 0) {
                    handleAudioTrackDiscontinuity();
                    this.allowPositionDiscontinuity = true;
                }
                if ((handleBuffer & MSG_SET_PLAYBACK_PARAMS) == 0) {
                    return false;
                }
                mediaCodec.releaseOutputBuffer(i, false);
                r0 = this.codecCounters;
                r0.renderedOutputBufferCount += MSG_SET_VOLUME;
                return true;
            } catch (Throwable e2) {
                notifyAudioTrackWriteError(e2);
                throw new ExoPlaybackException(e2);
            }
        }
    }

    protected void onOutputStreamEnded() {
        this.audioTrack.handleEndOfStream();
    }

    protected void handleAudioTrackDiscontinuity() {
    }

    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        switch (i) {
            case MSG_SET_VOLUME /*1*/:
                this.audioTrack.setVolume(((Float) obj).floatValue());
            case MSG_SET_PLAYBACK_PARAMS /*2*/:
                this.audioTrack.setPlaybackParams((PlaybackParams) obj);
            default:
                super.handleMessage(i, obj);
        }
    }

    private void notifyAudioTrackInitializationError(InitializationException initializationException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass1(initializationException));
        }
    }

    private void notifyAudioTrackWriteError(WriteException writeException) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass2(writeException));
        }
    }

    private void notifyAudioTrackUnderrun(int i, long j, long j2) {
        if (this.eventHandler != null && this.eventListener != null) {
            this.eventHandler.post(new AnonymousClass3(i, j, j2));
        }
    }
}
