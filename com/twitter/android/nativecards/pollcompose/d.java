package com.twitter.android.nativecards.pollcompose;

import com.twitter.media.model.MediaFile;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.MediaSource;
import defpackage.cyw;

/* compiled from: Twttr */
class d implements cyw<MediaFile, EditableImage> {
    final /* synthetic */ AddImagePollActivity a;

    d(AddImagePollActivity addImagePollActivity) {
        this.a = addImagePollActivity;
    }

    public EditableImage a(MediaFile mediaFile) {
        return (EditableImage) EditableMedia.a(mediaFile, MediaSource.b);
    }
}
