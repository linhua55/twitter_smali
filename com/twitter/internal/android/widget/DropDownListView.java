package com.twitter.internal.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View.OnKeyListener;
import android.widget.ListView;

/* compiled from: Twttr */
public final class DropDownListView extends ListView {
    private OnKeyListener a;

    public DropDownListView(Context context) {
        super(context);
    }

    public DropDownListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DropDownListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public boolean isInTouchMode() {
        return true;
    }

    public void setOnKeyListener(OnKeyListener onKeyListener) {
        this.a = onKeyListener;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        if (dispatchKeyEvent || this.a == null) {
            return dispatchKeyEvent;
        }
        return this.a.onKey(this, keyEvent.getKeyCode(), keyEvent);
    }

    public boolean hasWindowFocus() {
        return true;
    }

    public boolean isFocused() {
        return true;
    }

    public boolean hasFocus() {
        return true;
    }
}
