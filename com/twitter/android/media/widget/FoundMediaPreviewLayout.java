package com.twitter.android.media.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import com.google.android.exoplayer.C;

/* compiled from: Twttr */
public class FoundMediaPreviewLayout extends FrameLayout {
    private View a;
    private View b;

    public FoundMediaPreviewLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FoundMediaPreviewLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = findViewById(2131952488);
        this.b = findViewById(2131952489);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        int measuredHeight2 = this.b.getMeasuredHeight();
        int measuredHeight3 = this.a.getMeasuredHeight() + measuredHeight2;
        if (measuredHeight3 > MeasureSpec.getSize(i2) || measuredHeight3 > measuredHeight) {
            this.a.measure(MeasureSpec.makeMeasureSpec(getMeasuredWidth(), C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(measuredHeight - measuredHeight2, C.ENCODING_PCM_32BIT));
        } else {
            setMeasuredDimension(measuredWidth, measuredHeight3);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int left = this.a.getLeft();
        if (left > this.b.getLeft()) {
            this.b.layout(left, this.b.getTop(), this.b.getWidth() + left, this.b.getBottom());
        }
    }
}
