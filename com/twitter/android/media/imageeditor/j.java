package com.twitter.android.media.imageeditor;

/* compiled from: Twttr */
class j implements Runnable {
    final /* synthetic */ EditImageFragment a;

    j(EditImageFragment editImageFragment) {
        this.a = editImageFragment;
    }

    public void run() {
        this.a.o.setTranslationY((float) (-this.a.o.getMeasuredHeight()));
        this.a.o.animate().translationY(0.0f).alpha(1.0f).setDuration(250).setListener(new k(this));
    }
}
