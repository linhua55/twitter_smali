package com.twitter.library.av.playback;

import android.content.Context;

/* compiled from: Twttr */
public class al extends ai {
    protected AVPlayer a(au auVar, Context context) {
        return new AVPlayer(this, auVar, context);
    }

    protected void a(AVPlayer aVPlayer, boolean z) {
        aVPlayer.a(true, z);
    }
}
