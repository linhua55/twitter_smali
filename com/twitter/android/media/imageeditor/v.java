package com.twitter.android.media.imageeditor;

import android.view.View;
import com.twitter.android.media.imageeditor.stickers.StickerSelectorView;
import com.twitter.android.media.stickers.StickerFilteredImageView;
import com.twitter.android.media.stickers.StickerView;
import com.twitter.android.media.stickers.k;
import com.twitter.media.filters.Filters;
import com.twitter.media.model.MediaType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.util.concurrent.e;
import defpackage.ckf;

/* compiled from: Twttr */
class v implements e<EditableMedia> {
    final /* synthetic */ View a;
    final /* synthetic */ StickerFilteredImageView b;
    final /* synthetic */ MediaImageView c;
    final /* synthetic */ StickerSelectorView d;
    final /* synthetic */ o e;

    v(o oVar, View view, StickerFilteredImageView stickerFilteredImageView, MediaImageView mediaImageView, StickerSelectorView stickerSelectorView) {
        this.e = oVar;
        this.a = view;
        this.b = stickerFilteredImageView;
        this.c = mediaImageView;
        this.d = stickerSelectorView;
    }

    public void a(EditableMedia editableMedia) {
        if (editableMedia != null && editableMedia.g() == MediaType.b && this.a.getParent() != null) {
            EditableImage editableImage = (EditableImage) editableMedia;
            this.e.g = new ag(this.b, this.c, this.d, editableImage, this.e.h.getContext());
            for (ckf ckf : com.twitter.util.object.e.a(editableImage.h)) {
                StickerView stickerView = new StickerView(this.e.h.getContext(), new k(ckf));
                stickerView.setAspectRatio(ckf.b.j.b);
                this.b.a(stickerView);
            }
            if (this.e.a.isEmpty()) {
                new ad(this.e, this.e.h.getActivity()).execute(new Void[0]);
            } else {
                this.e.g.a((Filters) this.e.a.remove(0));
            }
            if (this.b.g()) {
                this.e.d = true;
            } else {
                this.b.setOnImageLoadedListener(new w(this));
            }
            if (this.e.h.c == 1 || this.e.h.c == 3) {
                this.b.postDelayed(new x(this), 10000);
            }
            this.e.g.a(this.e.b, this.e.c);
            this.e.c = null;
            this.e.b = 0;
            this.e.g.a(this.e.h.m, this.e.h.p);
            if (this.e.e || this.e.h.c == 2) {
                this.e.h.d(false);
                this.e.e = false;
            }
            if (this.e.h.c == 2) {
                this.e.h.a(editableImage);
            }
            this.e.g.c(true);
        }
    }
}
