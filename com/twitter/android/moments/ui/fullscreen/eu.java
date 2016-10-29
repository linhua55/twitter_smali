package com.twitter.android.moments.ui.fullscreen;

import android.support.annotation.VisibleForTesting;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.twitter.util.al;

/* compiled from: Twttr */
public class eu {
    private static eu a;
    private ev b;

    public static eu a() {
        if (a == null) {
            a = new eu();
        }
        return a;
    }

    private eu() {
    }

    public void a(boolean z) {
        this.b = new ev(z, al.b());
    }

    public boolean b() {
        return !c() || d();
    }

    @VisibleForTesting
    boolean c() {
        return this.b != null && al.b() - this.b.b <= HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS;
    }

    @VisibleForTesting
    boolean d() {
        return this.b == null ? true : this.b.a;
    }
}
