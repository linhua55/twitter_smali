package com.twitter.android.moments.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.twitter.moments.core.ui.widget.ConstraintFrameLayout;
import com.twitter.util.math.Size;
import cpk;

/* compiled from: Twttr */
public class FillCropFrameLayout extends ConstraintFrameLayout {
    private Size a;
    private Rect b;

    public FillCropFrameLayout(Context context) {
        super(context);
    }

    public FillCropFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onMeasure(int i, int i2) {
        if (this.a == null) {
            super.onMeasure(i, i2);
            return;
        }
        Rect a;
        Size a2 = Size.a(MeasureSpec.getSize(i), MeasureSpec.getSize(i2));
        if (this.b != null) {
            a = cpk.a(this.a, a2, this.b);
        } else {
            a = cpk.b(this.a, a2);
        }
        setConstraintRect(a);
        super.onMeasure(i, i2);
    }

    public void a(Size size, Rect rect) {
        this.a = size;
        this.b = rect;
        requestLayout();
    }

    public Rect getCropRect() {
        return this.b;
    }
}
