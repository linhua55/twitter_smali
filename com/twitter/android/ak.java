package com.twitter.android;

import com.twitter.media.model.MediaFile;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class ak implements e<MediaFile> {
    final /* synthetic */ BaseEditProfileActivity a;

    ak(BaseEditProfileActivity baseEditProfileActivity) {
        this.a = baseEditProfileActivity;
    }

    public void a(MediaFile mediaFile) {
        if (mediaFile != null) {
            this.a.c(mediaFile);
        } else {
            this.a.v();
        }
    }
}
