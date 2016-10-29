package com.twitter.ui.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;

/* compiled from: Twttr */
public class RtlDragOnlySeekBar extends DragOnlySeekBar {
    public RtlDragOnlySeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        motionEvent.setLocation(((float) getWidth()) - motionEvent.getX(), motionEvent.getY());
        return super.onTouchEvent(motionEvent);
    }

    protected void onDraw(Canvas canvas) {
        canvas.scale(-1.0f, 1.0f, ((float) getWidth()) / 2.0f, ((float) getHeight()) / 2.0f);
        super.onDraw(canvas);
    }
}
