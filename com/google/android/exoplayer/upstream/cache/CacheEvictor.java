package com.google.android.exoplayer.upstream.cache;

import com.google.android.exoplayer.upstream.cache.Cache.Listener;

/* compiled from: Twttr */
public interface CacheEvictor extends Listener {
    void onCacheInitialized();

    void onStartFile(Cache cache, String str, long j, long j2);
}
