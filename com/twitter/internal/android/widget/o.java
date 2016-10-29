package com.twitter.internal.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.RecyclerView.LayoutParams;
import android.util.AttributeSet;
import android.view.ViewGroup;
import defpackage.bdd;

/* compiled from: Twttr */
class o extends LayoutParams {
    public final boolean a;

    o(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.FlowLayoutManagerLayout);
        this.a = obtainStyledAttributes.getBoolean(bdd.FlowLayoutManagerLayout_ignoreParentPadding, false);
        obtainStyledAttributes.recycle();
    }

    o(int i, int i2) {
        super(i, i2);
        this.a = false;
    }

    o(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.a = false;
    }
}
