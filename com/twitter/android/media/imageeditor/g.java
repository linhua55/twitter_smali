package com.twitter.android.media.imageeditor;

/* compiled from: Twttr */
class g implements Runnable {
    final /* synthetic */ EditImageFragment a;

    g(EditImageFragment editImageFragment) {
        this.a = editImageFragment;
    }

    public void run() {
        this.a.n.setTranslationY((float) this.a.n.getMeasuredHeight());
        this.a.n.animate().translationY(0.0f).alpha(1.0f).setDuration(250).setListener(new h(this));
    }
}
