package com.google.android.exoplayer.smoothstreaming;

import java.io.IOException;

/* compiled from: Twttr */
public interface SmoothStreamingTrackSelector {

    /* compiled from: Twttr */
    public interface Output {
        void adaptiveTrack(SmoothStreamingManifest smoothStreamingManifest, int i, int[] iArr);

        void fixedTrack(SmoothStreamingManifest smoothStreamingManifest, int i, int i2);
    }

    void selectTracks(SmoothStreamingManifest smoothStreamingManifest, Output output) throws IOException;
}
