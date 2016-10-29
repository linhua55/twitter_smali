package com.twitter.android.nativecards;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.TextView;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class CombinedLineCountLayout extends ViewGroup {
    private int a;

    public CombinedLineCountLayout(Context context) {
        super(context);
    }

    public CombinedLineCountLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CombinedLineCountLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, mx.CombinedLineCountLayout, i, 0);
        try {
            this.a = obtainStyledAttributes.getInteger(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    protected void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i3 < childCount) {
            int measuredHeight;
            int max;
            int a;
            int combineMeasuredStates;
            if (getChildAt(i3) instanceof TextView) {
                TextView textView = (TextView) getChildAt(i3);
                if (textView.getVisibility() != 8) {
                    MarginLayoutParams marginLayoutParams = (MarginLayoutParams) textView.getLayoutParams();
                    if (this.a > 0) {
                        textView.setMaxLines(Math.max(0, this.a - i4));
                    }
                    measureChildWithMargins(textView, i, 0, i2, 0);
                    measuredHeight = (textView.getMeasuredHeight() + marginLayoutParams.topMargin) + marginLayoutParams.bottomMargin;
                    max = Math.max(i6, (textView.getMeasuredWidth() + marginLayoutParams.leftMargin) + marginLayoutParams.rightMargin);
                    int i8 = i7 + measuredHeight;
                    a = a(textView) + i4;
                    combineMeasuredStates = combineMeasuredStates(i5, textView.getMeasuredState());
                    measuredHeight = max;
                    max = i8;
                    i3++;
                    i4 = a;
                    i5 = combineMeasuredStates;
                    i6 = measuredHeight;
                    i7 = max;
                }
            }
            a = i4;
            combineMeasuredStates = i5;
            measuredHeight = i6;
            max = i7;
            i3++;
            i4 = a;
            i5 = combineMeasuredStates;
            i6 = measuredHeight;
            i7 = max;
        }
        setMeasuredDimension(resolveSizeAndState(Math.max(i6, getSuggestedMinimumWidth()), i, i5), resolveSizeAndState(Math.max(i7, getSuggestedMinimumHeight()), i2, i5 << 16));
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            int i6;
            View childAt = getChildAt(i5);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (textView.getVisibility() != 8) {
                    MarginLayoutParams marginLayoutParams = (MarginLayoutParams) textView.getLayoutParams();
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    int i7 = marginLayoutParams.leftMargin + paddingLeft;
                    int i8 = marginLayoutParams.topMargin + paddingTop;
                    textView.layout(i7, i8, (measuredWidth + i7) - marginLayoutParams.rightMargin, (i8 + measuredHeight) - marginLayoutParams.bottomMargin);
                    i6 = ((marginLayoutParams.topMargin + measuredHeight) + marginLayoutParams.bottomMargin) + paddingTop;
                    i5++;
                    paddingTop = i6;
                }
            }
            i6 = paddingTop;
            i5++;
            paddingTop = i6;
        }
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MarginLayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(-1, -1);
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return new MarginLayoutParams(layoutParams);
    }

    protected boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams instanceof MarginLayoutParams;
    }

    private int a(TextView textView) {
        int measuredHeight = textView.getMeasuredHeight();
        int lineHeight = textView.getLineHeight();
        return lineHeight > 0 ? measuredHeight / lineHeight : 0;
    }
}
