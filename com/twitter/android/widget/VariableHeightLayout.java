package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.RelativeLayout;
import com.google.android.exoplayer.text.Cue;

/* compiled from: Twttr */
public class VariableHeightLayout extends RelativeLayout {
    public VariableHeightLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int i3 = size / 2;
        super.onMeasure(i, MeasureSpec.makeMeasureSpec(i3, Cue.TYPE_UNSET));
        setMeasuredDimension(size, i3);
    }
}
