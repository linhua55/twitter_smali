package com.twitter.android.profilecompletionmodule.chooseheader;

import com.twitter.media.model.MediaFile;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.MediaSource;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
class c implements e<MediaFile> {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    public void a(MediaFile mediaFile) {
        this.a.a(mediaFile != null ? (EditableImage) EditableImage.a(mediaFile, MediaSource.c) : null);
    }
}
