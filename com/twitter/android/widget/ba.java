package com.twitter.android.widget;

/* compiled from: Twttr */
class ba implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ GalleryGridFragment b;

    ba(GalleryGridFragment galleryGridFragment, int i) {
        this.b = galleryGridFragment;
        this.a = i;
    }

    public void run() {
        GalleryGridFragment.a(this.b).setSelection(this.a);
    }
}
