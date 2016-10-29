package com.twitter.library.av.playback;

import java.io.IOException;

/* compiled from: Twttr */
class s extends br {
    final /* synthetic */ q a;

    s(q qVar) {
        this.a = qVar;
    }

    public void onLoadError(int i, IOException iOException) {
        this.a.a(true, new IllegalStateException("load error for source " + i, iOException));
    }
}
