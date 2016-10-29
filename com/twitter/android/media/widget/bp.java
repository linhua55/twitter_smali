package com.twitter.android.media.widget;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class bp implements OnGlobalLayoutListener {
    final /* synthetic */ ViewTreeObserver a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;
    final /* synthetic */ VideoSegmentEditView d;

    bp(VideoSegmentEditView videoSegmentEditView, ViewTreeObserver viewTreeObserver, int i, int i2) {
        this.d = videoSegmentEditView;
        this.a = viewTreeObserver;
        this.b = i;
        this.c = i2;
    }

    public void onGlobalLayout() {
        this.a.removeGlobalOnLayoutListener(this);
        VideoSegmentListView a = this.d.k;
        View childAt = a.getChildAt(this.b - a.getFirstVisiblePosition());
        if (childAt != null) {
            View childAt2 = a.getChildAt(this.c - a.getFirstVisiblePosition());
            childAt.setTranslationX((float) ((childAt2 == null ? 0 : childAt2.getLeft()) - childAt.getLeft()));
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt, View.TRANSLATION_X, new float[]{0.0f});
            ofFloat.setDuration(100);
            ofFloat.addUpdateListener(new bq(this, a));
            ofFloat.start();
        }
    }
}
