package com.twitter.android.media.imageeditor;

import com.twitter.library.media.widget.CroppableImageView;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.m;

/* compiled from: Twttr */
class r implements m {
    final /* synthetic */ MediaImageView a;
    final /* synthetic */ o b;

    r(o oVar, MediaImageView mediaImageView) {
        this.b = oVar;
        this.a = mediaImageView;
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        if (imageResponse.f() != null) {
            this.b.h.f(true);
        }
        if (this.b.h.e > 0.0f) {
            CroppableImageView croppableImageView = (CroppableImageView) this.a.getImageView();
            croppableImageView.post(new s(this, croppableImageView));
            this.b.h.k.setVisibility(8);
        }
        if (this.b.h.c == 2) {
            this.b.h.l.setVisibility(8);
            if (!this.b.h.l.g() && this.b.h.g != null) {
                this.b.h.g.a();
            }
        }
    }
}
