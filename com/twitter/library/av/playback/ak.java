package com.twitter.library.av.playback;

import cys;

/* compiled from: Twttr */
class ak implements cys<AVPlayerAttachment> {
    final /* synthetic */ AVPlayer a;

    ak(AVPlayer aVPlayer) {
        this.a = aVPlayer;
    }

    public /* synthetic */ void call(Object obj) {
        a((AVPlayerAttachment) obj);
    }

    public void a(AVPlayerAttachment aVPlayerAttachment) {
        AVPlayer.a(this.a, aVPlayerAttachment);
    }
}
