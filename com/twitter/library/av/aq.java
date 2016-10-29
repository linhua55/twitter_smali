package com.twitter.library.av;

/* compiled from: Twttr */
class aq implements Runnable {
    final /* synthetic */ VideoPlayerView a;

    aq(VideoPlayerView videoPlayerView) {
        this.a = videoPlayerView;
    }

    public void run() {
        this.a.a.c();
        if (this.a.e != null) {
            this.a.e.c();
        }
    }
}
