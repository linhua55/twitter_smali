package com.google.android.exoplayer.hls;

import java.io.IOException;

/* compiled from: Twttr */
public interface HlsTrackSelector {

    /* compiled from: Twttr */
    public interface Output {
        void adaptiveTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant[] variantArr);

        void fixedTrack(HlsMasterPlaylist hlsMasterPlaylist, Variant variant);
    }

    void selectTracks(HlsMasterPlaylist hlsMasterPlaylist, Output output) throws IOException;
}
