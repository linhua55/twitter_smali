package com.twitter.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListPopupWindow;

/* compiled from: Twttr */
class at extends ListPopupWindow implements aw {
    int a;
    final /* synthetic */ TwitterSelection b;

    at(TwitterSelection twitterSelection, Context context, AttributeSet attributeSet, int i) {
        this.b = twitterSelection;
        super(context, attributeSet);
        setModal(true);
        this.a = i;
    }

    public void show() {
        if (getAnchorView() == null) {
            View view = null;
            if (this.a > 0) {
                view = this.b.getRootView().findViewById(this.a);
            }
            if (view == null) {
                view = this.b;
            }
            setAnchorView(view);
        }
        super.show();
    }
}
