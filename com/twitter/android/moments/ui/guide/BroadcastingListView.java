package com.twitter.android.moments.ui.guide;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;

/* compiled from: Twttr */
public class BroadcastingListView extends ListView {
    private final c a;

    public BroadcastingListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new c();
        super.setOnScrollListener(this.a);
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        throw new UnsupportedOperationException("Use addOnScrollListener and removeOnScrollListener instead");
    }
}
