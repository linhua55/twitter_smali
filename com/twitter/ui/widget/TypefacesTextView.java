package com.twitter.ui.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;

/* compiled from: Twttr */
public class TypefacesTextView extends TextView {
    public TypefacesTextView(Context context) {
        super(context);
    }

    public TypefacesTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TypefacesTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setTypeface(Typeface typeface) {
        super.setTypeface(ax.a(getContext()).a(typeface, !isInEditMode()));
    }
}
