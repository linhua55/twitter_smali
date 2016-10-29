package com.twitter.library.media.widget;

import com.twitter.library.media.util.x;

/* compiled from: Twttr */
class p implements j {
    final /* synthetic */ EditableMediaView a;

    p(EditableMediaView editableMediaView) {
        this.a = editableMediaView;
    }

    public void a(AnimatedGifView animatedGifView) {
        this.a.getImageView().setVisibility(8);
        animatedGifView.setVisibility(0);
        animatedGifView.b();
        animatedGifView.setOnClickListener(new q(this, animatedGifView));
        if (this.a.n != null) {
            this.a.n.a(animatedGifView);
        }
    }

    public void b(AnimatedGifView animatedGifView) {
        animatedGifView.setVisibility(8);
        this.a.getImageView().setVisibility(0);
        this.a.b(x.a(this.a.getContext(), this.a.m), false);
        if (this.a.n != null) {
            this.a.n.b(animatedGifView);
        }
    }

    public void c(AnimatedGifView animatedGifView) {
        this.a.a(null);
        if (this.a.n != null) {
            this.a.n.c(animatedGifView);
        }
    }

    public void d(AnimatedGifView animatedGifView) {
        this.a.a(this.a.a);
        if (this.a.n != null) {
            this.a.n.d(animatedGifView);
        }
    }
}
