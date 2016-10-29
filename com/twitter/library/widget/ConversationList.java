package com.twitter.library.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;

/* compiled from: Twttr */
public class ConversationList extends ListView {
    public ConversationList(Context context) {
        super(context);
    }

    public ConversationList(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ConversationList(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        setSelection(getCount() - 1);
    }
}
