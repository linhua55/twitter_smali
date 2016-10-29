package com.twitter.android.media.stickers;

/* compiled from: Twttr */
class c implements Runnable {
    final /* synthetic */ StickerMediaView a;

    c(StickerMediaView stickerMediaView) {
        this.a = stickerMediaView;
    }

    public void run() {
        for (StickerMediaImageView stickerMediaImageView : this.a.c) {
            stickerMediaImageView.aI_();
            StickerSheenView a = this.a.a(stickerMediaImageView);
            if (a != null) {
                a.a();
            }
        }
        if (this.a.f != null) {
            this.a.f.a();
        }
    }
}
