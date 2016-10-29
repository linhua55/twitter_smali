package com.twitter.library.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import defpackage.bct;

/* compiled from: Twttr */
public class QuotedViewWithBottomView extends QuoteView {
    private final View b;

    public QuotedViewWithBottomView(Context context) {
        this(context, null);
    }

    public QuotedViewWithBottomView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.quoteViewStyle);
    }

    public QuotedViewWithBottomView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public QuotedViewWithBottomView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.b = LayoutInflater.from(context).inflate(i2, null);
        addView(this.b);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        measureChild(this.b, i, i2);
        setMeasuredDimension(View.resolveSize(measuredWidth, i), View.resolveSize(measuredHeight + this.b.getMeasuredHeight(), i2));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.b.layout(getPaddingLeft(), (getMeasuredHeight() - this.b.getMeasuredHeight()) - getPaddingBottom(), getWidth() - getPaddingRight(), getMeasuredHeight() - getPaddingBottom());
    }
}
