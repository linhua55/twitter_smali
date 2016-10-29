package com.twitter.library.av.playback;

import android.content.Context;
import com.google.android.exoplayer.hls.HlsPlaylist;
import com.google.android.exoplayer.util.ManifestFetcher.ManifestCallback;
import java.io.IOException;

/* compiled from: Twttr */
class r implements ManifestCallback<HlsPlaylist> {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;
    final /* synthetic */ q c;

    r(q qVar, Context context, String str) {
        this.c = qVar;
        this.a = context;
        this.b = str;
    }

    public /* synthetic */ void onSingleManifest(Object obj) {
        a((HlsPlaylist) obj);
    }

    public void a(HlsPlaylist hlsPlaylist) {
        this.c.a(this.a, this.b, hlsPlaylist);
    }

    public void onSingleManifestError(IOException iOException) {
        this.c.a(true, iOException);
    }
}
