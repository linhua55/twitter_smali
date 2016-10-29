package com.twitter.library.client;

import android.app.Activity;
import bvh;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.twitter.app.common.util.h;

/* compiled from: Twttr */
public class an implements h {
    private final bg a;

    public an() {
        this.a = bg.a();
    }

    public void a(Activity activity) {
    }

    public void b(Activity activity) {
        bvh.a(this.a.c().g(), HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS);
    }
}
