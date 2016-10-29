package com.twitter.android.client;

import com.google.android.exoplayer.hls.HlsChunkSource;

/* compiled from: Twttr */
enum BrowserLoadingStatus$LinkFetchDelayTime {
    DEFAULT(HlsChunkSource.DEFAULT_MAX_BUFFER_TO_SWITCH_DOWN_MS),
    GOOD_NETWORK(10000),
    GREAT_NETWORK(HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    
    private final long mDelayInMs;

    private BrowserLoadingStatus$LinkFetchDelayTime(long j) {
        this.mDelayInMs = j;
    }

    public long a() {
        return this.mDelayInMs;
    }
}
