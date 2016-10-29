package com.twitter.moments.core.ui.widget.capsule;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import com.twitter.ui.widget.TypefacesTextView;

/* compiled from: Twttr */
public class NotClippedTextView extends TypefacesTextView {
    private final Paint a;
    private final Rect b;

    public NotClippedTextView(Context context) {
        this(context, null);
    }

    public NotClippedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NotClippedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Paint();
        this.b = new Rect();
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(a(i), i2);
    }

    private int a(int i) {
        return getText() == null ? i : MeasureSpec.makeMeasureSpec(a(getText().toString(), getTextSize()), 0);
    }

    private int a(String str, float f) {
        this.a.setTypeface(super.getTypeface());
        this.a.setTextSize(f);
        this.a.getTextBounds(str, 0, str.length(), this.b);
        return this.b.width();
    }
}
