package com.twitter.android;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.twitter.android.autocomplete.ListViewSuggestionEditText;
import com.twitter.android.widget.DraggableHeaderLayout;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
class kf implements OnGlobalLayoutListener {
    final /* synthetic */ DraggableHeaderLayout a;
    final /* synthetic */ MediaImageView b;
    final /* synthetic */ ListViewSuggestionEditText c;
    final /* synthetic */ MediaTagFragment d;

    kf(MediaTagFragment mediaTagFragment, DraggableHeaderLayout draggableHeaderLayout, MediaImageView mediaImageView, ListViewSuggestionEditText listViewSuggestionEditText) {
        this.d = mediaTagFragment;
        this.a = draggableHeaderLayout;
        this.b = mediaImageView;
        this.c = listViewSuggestionEditText;
    }

    public void onGlobalLayout() {
        int dimensionPixelSize = this.d.getResources().getDimensionPixelSize(2131690131);
        this.a.setAnchorOffset(this.b.getMeasuredHeight() - dimensionPixelSize);
        this.a.setMinVisibleHeaderHeight(dimensionPixelSize + this.c.getMeasuredHeight());
        this.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }
}
