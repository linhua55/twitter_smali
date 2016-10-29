package com.twitter.android;

import com.twitter.media.model.VideoFile;

/* compiled from: Twttr */
class ka implements Runnable {
    final /* synthetic */ VideoFile a;
    final /* synthetic */ jz b;

    ka(jz jzVar, VideoFile videoFile) {
        this.b = jzVar;
        this.a = videoFile;
    }

    public void run() {
        MediaPlayerActivity.a(this.b.a).setVideoPath(this.a.d.getAbsolutePath());
        this.b.a.ae_();
    }
}
