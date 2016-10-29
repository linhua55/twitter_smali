package com.twitter.library.av.playback;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
class aj {
    public final AVPlayer a;
    public final AtomicInteger b;

    aj(AVPlayer aVPlayer, int i) {
        this.a = aVPlayer;
        this.b = new AtomicInteger(i);
    }
}
