package com.google.android.exoplayer;

import android.view.Surface;

/* compiled from: Twttr */
public interface MediaCodecVideoTrackRenderer$EventListener extends MediaCodecTrackRenderer$EventListener {
    void onDrawnToSurface(Surface surface);

    void onDroppedFrames(int i, long j);

    void onVideoSizeChanged(int i, int i2, int i3, float f);
}
