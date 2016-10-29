package com.twitter.android;

import com.twitter.media.model.MediaFile;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class al implements e<MediaFile> {
    final /* synthetic */ BaseEditProfileActivity a;

    al(BaseEditProfileActivity baseEditProfileActivity) {
        this.a = baseEditProfileActivity;
    }

    public void a(MediaFile mediaFile) {
        if (mediaFile != null) {
            this.a.d(mediaFile);
        } else {
            this.a.u();
        }
    }
}
