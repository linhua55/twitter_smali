package com.twitter.android.widget.highlights;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;

/* compiled from: Twttr */
public class StoriesViewPager$LayoutParams extends LayoutParams {
    public boolean a;
    public int b;
    public float c;
    public boolean d;
    public int e;
    public int f;

    public StoriesViewPager$LayoutParams() {
        super(-1, -1);
        this.c = 0.0f;
    }

    public StoriesViewPager$LayoutParams(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, StoriesViewPager.i());
        this.b = obtainStyledAttributes.getInteger(0, 48);
        obtainStyledAttributes.recycle();
    }
}
