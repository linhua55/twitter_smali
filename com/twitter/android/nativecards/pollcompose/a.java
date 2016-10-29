package com.twitter.android.nativecards.pollcompose;

import android.net.Uri;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import defpackage.cyw;

/* compiled from: Twttr */
class a implements cyw<Uri, MediaFile> {
    final /* synthetic */ AddImagePollActivity a;

    a(AddImagePollActivity addImagePollActivity) {
        this.a = addImagePollActivity;
    }

    public MediaFile a(Uri uri) {
        return MediaFile.a(this.a.getApplicationContext(), uri, MediaType.IMAGE);
    }
}
