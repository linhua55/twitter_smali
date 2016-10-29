package com.google.android.exoplayer;

import com.google.android.exoplayer.SampleSource.SampleSourceReader;
import java.util.Arrays;

/* compiled from: Twttr */
public abstract class SampleSourceTrackRenderer extends TrackRenderer {
    private long durationUs;
    private SampleSourceReader enabledSource;
    private int enabledSourceTrackIndex;
    private int[] handledSourceIndices;
    private int[] handledSourceTrackIndices;
    private final SampleSourceReader[] sources;

    protected abstract void doSomeWork(long j, long j2, boolean z) throws ExoPlaybackException;

    protected abstract boolean handlesTrack(MediaFormat mediaFormat) throws MediaCodecUtil$DecoderQueryException;

    protected abstract void onDiscontinuity(long j) throws ExoPlaybackException;

    public SampleSourceTrackRenderer(SampleSource... sampleSourceArr) {
        this.sources = new SampleSourceReader[sampleSourceArr.length];
        for (int i = 0; i < sampleSourceArr.length; i++) {
            this.sources[i] = sampleSourceArr[i].register();
        }
    }

    protected final boolean doPrepare(long j) throws ExoPlaybackException {
        int i;
        int i2 = 1;
        for (SampleSourceReader prepare : this.sources) {
            i2 &= prepare.prepare(j);
        }
        if (i2 == 0) {
            return false;
        }
        i2 = 0;
        for (SampleSourceReader prepare2 : this.sources) {
            i2 += prepare2.getTrackCount();
        }
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        int length = this.sources.length;
        i2 = 0;
        long j2 = 0;
        int i3 = 0;
        while (i3 < length) {
            SampleSourceReader sampleSourceReader = this.sources[i3];
            int trackCount = sampleSourceReader.getTrackCount();
            i = i2;
            i2 = 0;
            while (i2 < trackCount) {
                MediaFormat format = sampleSourceReader.getFormat(i2);
                try {
                    if (handlesTrack(format)) {
                        iArr[i] = i3;
                        iArr2[i] = i2;
                        i++;
                        if (j2 != -1) {
                            long j3 = format.durationUs;
                            if (j3 == -1) {
                                j2 = -1;
                            } else if (j3 != -2) {
                                j2 = Math.max(j2, j3);
                            }
                        }
                    }
                    i2++;
                } catch (Throwable e) {
                    throw new ExoPlaybackException(e);
                }
            }
            i3++;
            i2 = i;
        }
        this.durationUs = j2;
        this.handledSourceIndices = Arrays.copyOf(iArr, i2);
        this.handledSourceTrackIndices = Arrays.copyOf(iArr2, i2);
        return true;
    }

    protected void onEnabled(int i, long j, boolean z) throws ExoPlaybackException {
        long shiftInputPosition = shiftInputPosition(j);
        this.enabledSource = this.sources[this.handledSourceIndices[i]];
        this.enabledSourceTrackIndex = this.handledSourceTrackIndices[i];
        this.enabledSource.enable(this.enabledSourceTrackIndex, shiftInputPosition);
        onDiscontinuity(shiftInputPosition);
    }

    protected final void seekTo(long j) throws ExoPlaybackException {
        long shiftInputPosition = shiftInputPosition(j);
        this.enabledSource.seekToUs(shiftInputPosition);
        checkForDiscontinuity(shiftInputPosition);
    }

    protected final void doSomeWork(long j, long j2) throws ExoPlaybackException {
        long shiftInputPosition = shiftInputPosition(j);
        doSomeWork(checkForDiscontinuity(shiftInputPosition), j2, this.enabledSource.continueBuffering(this.enabledSourceTrackIndex, shiftInputPosition));
    }

    protected long getBufferedPositionUs() {
        return this.enabledSource.getBufferedPositionUs();
    }

    protected long getDurationUs() {
        return this.durationUs;
    }

    protected void maybeThrowError() throws ExoPlaybackException {
        if (this.enabledSource != null) {
            maybeThrowError(this.enabledSource);
            return;
        }
        for (SampleSourceReader maybeThrowError : this.sources) {
            maybeThrowError(maybeThrowError);
        }
    }

    protected void onDisabled() throws ExoPlaybackException {
        this.enabledSource.disable(this.enabledSourceTrackIndex);
        this.enabledSource = null;
    }

    protected void onReleased() throws ExoPlaybackException {
        for (SampleSourceReader release : this.sources) {
            release.release();
        }
    }

    protected final int getTrackCount() {
        return this.handledSourceTrackIndices.length;
    }

    protected final MediaFormat getFormat(int i) {
        return this.sources[this.handledSourceIndices[i]].getFormat(this.handledSourceTrackIndices[i]);
    }

    protected long shiftInputPosition(long j) {
        return j;
    }

    protected final int readSource(long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        return this.enabledSource.readData(this.enabledSourceTrackIndex, j, mediaFormatHolder, sampleHolder);
    }

    private long checkForDiscontinuity(long j) throws ExoPlaybackException {
        long readDiscontinuity = this.enabledSource.readDiscontinuity(this.enabledSourceTrackIndex);
        if (readDiscontinuity == Long.MIN_VALUE) {
            return j;
        }
        onDiscontinuity(readDiscontinuity);
        return readDiscontinuity;
    }

    private void maybeThrowError(SampleSourceReader sampleSourceReader) throws ExoPlaybackException {
        try {
            sampleSourceReader.maybeThrowError();
        } catch (Throwable e) {
            throw new ExoPlaybackException(e);
        }
    }
}
