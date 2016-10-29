package com.twitter.android.media.imageeditor;

import com.twitter.library.media.widget.CroppableImageView;

/* compiled from: Twttr */
class s implements Runnable {
    final /* synthetic */ CroppableImageView a;
    final /* synthetic */ r b;

    s(r rVar, CroppableImageView croppableImageView) {
        this.b = rVar;
        this.a = croppableImageView;
    }

    public void run() {
        this.a.setCropAspectRatio(this.b.b.h.e);
    }
}
