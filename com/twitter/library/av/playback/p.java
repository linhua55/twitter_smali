package com.twitter.library.av.playback;

import android.content.Context;
import com.google.android.exoplayer.dash.mpd.MediaPresentationDescription;
import com.google.android.exoplayer.util.ManifestFetcher.ManifestCallback;
import java.io.IOException;

/* compiled from: Twttr */
class p implements ManifestCallback<MediaPresentationDescription> {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;
    final /* synthetic */ o c;

    p(o oVar, Context context, String str) {
        this.c = oVar;
        this.a = context;
        this.b = str;
    }

    public /* synthetic */ void onSingleManifest(Object obj) {
        a((MediaPresentationDescription) obj);
    }

    public void a(MediaPresentationDescription mediaPresentationDescription) {
        this.c.a(this.a, this.b, mediaPresentationDescription);
    }

    public void onSingleManifestError(IOException iOException) {
        this.c.a(true, iOException);
    }
}
