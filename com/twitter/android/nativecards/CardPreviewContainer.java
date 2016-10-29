package com.twitter.android.nativecards;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;

/* compiled from: Twttr */
public class CardPreviewContainer extends FrameLayout {
    private View a;

    public CardPreviewContainer(Context context) {
        this(context, null);
    }

    public CardPreviewContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CardPreviewContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.a = getChildAt(0);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        Rect rect = new Rect();
        this.a.getHitRect(rect);
        return !rect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public void setButtonOnClickListener(OnClickListener onClickListener) {
        this.a.setOnClickListener(onClickListener);
    }

    public void a(View view) {
        addView(view);
        this.a.bringToFront();
    }

    public void b(View view) {
        removeView(view);
    }
}
