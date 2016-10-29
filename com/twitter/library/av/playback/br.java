package com.twitter.library.av.playback;

import com.google.android.exoplayer.chunk.Format;
import com.google.android.exoplayer.hls.HlsSampleSource.EventListener;
import java.io.IOException;

/* compiled from: Twttr */
public class br implements EventListener {
    public void onLoadStarted(int i, long j, int i2, int i3, Format format, long j2, long j3) {
    }

    public void onLoadCompleted(int i, long j, int i2, int i3, Format format, long j2, long j3, long j4, long j5) {
    }

    public void onLoadCanceled(int i, long j) {
    }

    public void onLoadError(int i, IOException iOException) {
    }

    public void onUpstreamDiscarded(int i, long j, long j2) {
    }

    public void onDownstreamFormatChanged(int i, Format format, int i2, long j) {
    }
}
