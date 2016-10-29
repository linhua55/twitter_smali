package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.twitter.moments.core.ui.widget.ConstraintFrameLayout;
import com.twitter.util.math.Size;
import com.twitter.util.math.b;

/* compiled from: Twttr */
public class ScaleToFitFrameLayout extends ConstraintFrameLayout {
    private float a;

    public ScaleToFitFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0.0f;
    }

    protected void onMeasure(int i, int i2) {
        if (this.a == 0.0f) {
            super.onMeasure(i, i2);
            return;
        }
        Size a = Size.a(MeasureSpec.getSize(i), MeasureSpec.getSize(i2));
        setConstraintRect(b.a(a.f(), a.b(this.a)));
        super.onMeasure(i, i2);
    }

    public void setAspectRatio(float f) {
        this.a = f;
        setConstraintRect(null);
        requestLayout();
    }

    public void a() {
        setAspectRatio(0.0f);
    }
}
