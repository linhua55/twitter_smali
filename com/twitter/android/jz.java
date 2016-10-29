package com.twitter.android;

import com.twitter.library.media.manager.am;
import com.twitter.library.media.manager.ao;
import com.twitter.media.model.VideoFile;
import com.twitter.media.request.ResourceResponse;

/* compiled from: Twttr */
class jz implements ao {
    final /* synthetic */ MediaPlayerActivity a;

    jz(MediaPlayerActivity mediaPlayerActivity) {
        this.a = mediaPlayerActivity;
    }

    public void a(ResourceResponse<am, VideoFile> resourceResponse) {
        VideoFile videoFile = (VideoFile) resourceResponse.f();
        if (videoFile != null && this.a.c != null) {
            this.a.c.post(new ka(this, videoFile));
        }
    }
}
