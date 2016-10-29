package com.twitter.android.media.imageeditor.stickers;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
class l extends ItemDecoration {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ StickerSelectorView c;

    l(StickerSelectorView stickerSelectorView, int i, int i2) {
        this.c = stickerSelectorView;
        this.a = i;
        this.b = i2;
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        if (view instanceof MediaImageView) {
            rect.set(this.a, this.b, this.a, this.b);
        }
    }
}
