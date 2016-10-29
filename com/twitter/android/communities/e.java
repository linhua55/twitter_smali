package com.twitter.android.communities;

import com.google.android.exoplayer.hls.HlsChunkSource;
import com.twitter.platform.t;
import defpackage.avo;

/* compiled from: Twttr */
public class e implements d {
    private final t a;

    public e(t tVar) {
        this.a = tVar;
    }

    public boolean a(avo avo) {
        return Math.abs(this.a.a() - avo.c()) < HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS;
    }
}
