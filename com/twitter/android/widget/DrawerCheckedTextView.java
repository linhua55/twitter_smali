package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CheckedTextView;

/* compiled from: Twttr */
public class DrawerCheckedTextView extends CheckedTextView {
    public DrawerCheckedTextView(Context context) {
        super(context);
    }

    public DrawerCheckedTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DrawerCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCheckable(false);
    }
}
