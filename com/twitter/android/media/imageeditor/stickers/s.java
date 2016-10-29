package com.twitter.android.media.imageeditor.stickers;

import android.graphics.Rect;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
final class s extends ItemDecoration {
    final /* synthetic */ int a;

    s(int i) {
        this.a = i;
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        if (view instanceof MediaImageView) {
            rect.set(this.a, this.a, this.a, this.a);
        }
    }
}
