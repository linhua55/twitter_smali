package com.twitter.android.media.imageeditor;

import cjw;
import com.twitter.android.media.imageeditor.stickers.c;
import com.twitter.android.media.imageeditor.stickers.i;
import com.twitter.android.media.stickers.StickerFilteredImageView;
import com.twitter.android.media.stickers.StickerView;
import com.twitter.android.media.stickers.k;
import com.twitter.library.client.Session;
import com.twitter.model.media.EditableImage;
import com.twitter.util.object.e;

/* compiled from: Twttr */
class u implements i {
    final /* synthetic */ StickerFilteredImageView a;
    final /* synthetic */ o b;

    u(o oVar, StickerFilteredImageView stickerFilteredImageView) {
        this.b = oVar;
        this.a = stickerFilteredImageView;
    }

    public void a(cjw cjw, int i) {
        ag d = this.b.h.h.d();
        if (d != null) {
            this.b.h.m.a(cjw);
            EditableImage a = d.a();
            StickerView stickerView = new StickerView(this.b.h.getContext(), new k(cjw, (float) (-a.e)));
            stickerView.setAspectRatio(cjw.j.b);
            String str = "STICKER:" + Long.toString(cjw.h) + ":" + Integer.toString(a.e);
            stickerView.setTag(str);
            this.a.a(stickerView);
            EditImageFragment.a(this.b.h, d);
            this.b.h.e(false);
            EditImageFragment.a(this.b.h, str);
            c.a(((Session) e.a(EditImageFragment.a(this.b.h))).g(), i);
        }
    }
}
