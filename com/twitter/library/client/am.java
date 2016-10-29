package com.twitter.library.client;

import android.support.customtabs.CustomTabsSession;
import com.google.android.exoplayer.hls.HlsChunkSource;

/* compiled from: Twttr */
public class am {
    private final CustomTabsSession a;
    private final String b;
    private final long c;

    public am(CustomTabsSession customTabsSession, String str, long j) {
        this.a = customTabsSession;
        this.b = str;
        this.c = j;
    }

    public CustomTabsSession a() {
        return this.a;
    }

    public boolean a(String str) {
        return this.b.equals(str);
    }

    public boolean a(String str, long j) {
        return !a(str) || j > this.c + HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS;
    }
}
