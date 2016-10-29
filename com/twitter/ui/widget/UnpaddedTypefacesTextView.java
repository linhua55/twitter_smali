package com.twitter.ui.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import com.twitter.util.ui.i;

/* compiled from: Twttr */
public class UnpaddedTypefacesTextView extends TypefacesTextView {
    private final Rect a;
    private int b;
    private int c;
    private int d;
    private Drawable e;
    private Drawable f;

    public UnpaddedTypefacesTextView(Context context) {
        super(context);
        this.a = new Rect();
        this.b = 0;
        this.c = 0;
        this.d = 0;
    }

    public UnpaddedTypefacesTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new Rect();
        this.b = 0;
        this.c = 0;
        this.d = 0;
    }

    public UnpaddedTypefacesTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Rect();
        this.b = 0;
        this.c = 0;
        this.d = 0;
    }

    private void a() {
        TextPaint paint = getPaint();
        paint.setColor(getCurrentTextColor());
        paint.setTypeface(getTypeface());
        paint.setTextSize(getTextSize());
    }

    public void onMeasure(int i, int i2) {
        int i3 = 0;
        a();
        super.onMeasure(i, i2);
        Layout layout = getLayout();
        String charSequence = getText().toString();
        getPaint().getTextBounds(charSequence, 0, charSequence.length(), this.a);
        this.b = i.a(layout, this.a);
        int height = layout.getHeight() - (i.b(layout, this.a) + this.b);
        setMeasuredDimension(getMeasuredWidth(), (getPaddingTop() + height) + getPaddingBottom());
        this.d = this.e == null ? 0 : (int) Math.floor((double) ((height - this.e.getIntrinsicHeight()) / 2));
        if (this.f != null) {
            i3 = (int) Math.floor((double) ((height - this.f.getIntrinsicHeight()) / 2));
        }
        this.c = i3;
    }

    public void onDraw(Canvas canvas) {
        if (getLayout() == null) {
            onPreDraw();
        }
        canvas.save();
        canvas.translate((float) getCompoundPaddingLeft(), (float) (getPaddingTop() - this.b));
        getLayout().draw(canvas);
        canvas.restore();
        if (!(this.e == null && this.f == null)) {
            int min = Math.min(this.d, this.c);
            if (min < 0 && canvas.getClipBounds(this.a)) {
                this.a.inset(0, min);
                canvas.clipRect(this.a, Op.REPLACE);
            }
        }
        if (this.e != null) {
            canvas.save();
            canvas.translate((float) getPaddingLeft(), (float) (getPaddingTop() + this.d));
            this.e.draw(canvas);
            canvas.restore();
        }
        if (this.f != null) {
            canvas.save();
            canvas.translate((float) (getWidth() - (this.f.getIntrinsicWidth() + getPaddingRight())), (float) (getPaddingTop() + this.c));
            this.f.draw(canvas);
            canvas.restore();
        }
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable2 == null && drawable4 == null) {
            super.setCompoundDrawables(drawable, null, drawable3, null);
            this.e = drawable;
            this.f = drawable3;
            return;
        }
        throw new UnsupportedOperationException("Vertical drawables are not implemented.");
    }
}
