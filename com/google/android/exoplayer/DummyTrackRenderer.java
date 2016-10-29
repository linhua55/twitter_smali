package com.google.android.exoplayer;

/* compiled from: Twttr */
public final class DummyTrackRenderer extends TrackRenderer {
    protected boolean doPrepare(long j) throws ExoPlaybackException {
        return true;
    }

    protected int getTrackCount() {
        return 0;
    }

    protected MediaFormat getFormat(int i) {
        throw new IllegalStateException();
    }

    protected boolean isEnded() {
        throw new IllegalStateException();
    }

    protected boolean isReady() {
        throw new IllegalStateException();
    }

    protected void seekTo(long j) {
        throw new IllegalStateException();
    }

    protected void doSomeWork(long j, long j2) {
        throw new IllegalStateException();
    }

    protected void maybeThrowError() {
        throw new IllegalStateException();
    }

    protected long getDurationUs() {
        throw new IllegalStateException();
    }

    protected long getBufferedPositionUs() {
        throw new IllegalStateException();
    }
}
