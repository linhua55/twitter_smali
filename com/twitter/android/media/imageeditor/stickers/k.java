package com.twitter.android.media.imageeditor.stickers;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class k implements OnClickListener {
    final /* synthetic */ StickerSelectorView a;

    k(StickerSelectorView stickerSelectorView) {
        this.a = stickerSelectorView;
    }

    public void onClick(View view) {
        if (this.a.i != null) {
            this.a.f.setVisibility(8);
            this.a.e.setVisibility(0);
            this.a.i.a();
        }
    }
}
