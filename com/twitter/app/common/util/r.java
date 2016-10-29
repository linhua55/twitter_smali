package com.twitter.app.common.util;

import android.app.Service;
import com.google.android.exoplayer.hls.HlsChunkSource;

/* compiled from: Twttr */
public class r {
    private final p<Service> a;

    public r() {
        this.a = new p(300000, HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS, 10);
    }

    public p<Service> a() {
        return this.a;
    }
}
