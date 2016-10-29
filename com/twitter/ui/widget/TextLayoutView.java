package com.twitter.ui.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.support.annotation.StringRes;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import com.twitter.util.object.e;
import com.twitter.util.ui.r;
import defpackage.cse;

/* compiled from: Twttr */
public class TextLayoutView extends View {
    private final TextPaint a;
    private boolean b;
    private int c;
    private StaticLayout d;
    private ColorStateList e;
    private Alignment f;
    private float g;
    private float h;
    private boolean i;
    private boolean j;
    private CharSequence k;

    public TextLayoutView(Context context) {
        this(context, null);
    }

    public TextLayoutView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TextLayoutView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new TextPaint();
        this.f = Alignment.ALIGN_NORMAL;
        this.g = 1.0f;
        this.h = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cse.TextLayoutView, i, 0);
        a(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public TextLayoutView(Context context, int i) {
        super(context, null);
        this.a = new TextPaint();
        this.f = Alignment.ALIGN_NORMAL;
        this.g = 1.0f;
        this.h = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, cse.TextLayoutView);
        a(context, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    private void a(Context context, TypedArray typedArray) {
        this.a.setAntiAlias(true);
        this.k = typedArray.getText(cse.TextLayoutView_android_text);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(cse.TextLayoutView_android_textSize, 15);
        this.h = (float) typedArray.getDimensionPixelSize(cse.TextLayoutView_android_lineSpacingExtra, (int) this.h);
        this.g = typedArray.getFloat(cse.TextLayoutView_android_lineSpacingMultiplier, this.g);
        ColorStateList colorStateList = typedArray.getColorStateList(cse.TextLayoutView_android_textColor);
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-16777216);
        }
        a(colorStateList);
        this.a.setTextSize((float) dimensionPixelSize);
        this.a.setTypeface(ax.a(context).a);
    }

    public TextLayoutView a(ColorStateList colorStateList) {
        this.e = colorStateList;
        b();
        return this;
    }

    public TextLayoutView a(float f) {
        if (this.a.getTextSize() != f) {
            this.a.setTextSize(f);
            a();
        }
        return this;
    }

    public TextLayoutView a(Typeface typeface) {
        if (this.a.getTypeface() != typeface) {
            this.a.setTypeface(typeface);
            a();
        }
        return this;
    }

    public TextLayoutView a(Alignment alignment) {
        if (this.f != alignment) {
            this.f = alignment;
            a();
        }
        return this;
    }

    public TextLayoutView a(boolean z) {
        if (this.i != z) {
            this.i = z;
            a();
        }
        return this;
    }

    public TextLayoutView b(boolean z) {
        if (this.j != z) {
            this.j = z;
            a();
        }
        return this;
    }

    public void setText(@StringRes int i) {
        setText(getResources().getString(i));
    }

    public void setText(CharSequence charSequence) {
        CharSequence charSequence2 = (CharSequence) e.b(charSequence, "");
        if (!TextUtils.equals(charSequence2, this.k)) {
            this.k = charSequence2;
            this.d = null;
            a();
        }
    }

    public void setTextWithVisibility(CharSequence charSequence) {
        setText(charSequence);
        setVisibility(charSequence == null ? 8 : 0);
    }

    protected void onMeasure(int i, int i2) {
        if (a(b(i))) {
            StaticLayout staticLayout = this.d;
            setMeasuredDimension(resolveSize((getPaddingLeft() + getPaddingRight()) + Math.min(staticLayout.getWidth(), staticLayout.getEllipsizedWidth()), i), resolveSize(staticLayout.getHeight() + (getPaddingTop() + getPaddingBottom()), i2));
            return;
        }
        setMeasuredDimension(16777216, 16777216);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.d != null) {
            canvas.save();
            if (this.j) {
                canvas.translate((float) ((getWidth() - getPaddingRight()) - Math.min(this.d.getWidth(), this.d.getEllipsizedWidth())), (float) getPaddingTop());
            } else {
                canvas.translate((float) getPaddingLeft(), (float) getPaddingTop());
            }
            this.d.draw(canvas);
            canvas.restore();
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.e.isStateful()) {
            b();
        }
    }

    private boolean a(int i) {
        if (this.b && i == this.c) {
            return true;
        }
        int paddingLeft = i - (getPaddingLeft() + getPaddingRight());
        if (paddingLeft <= 0) {
            return false;
        }
        int a;
        this.b = true;
        this.c = i;
        if (this.i) {
            a = r.a(this.k, this.a);
        } else {
            a = paddingLeft;
        }
        this.d = new StaticLayout(this.k, 0, this.k.length(), this.a, a, this.f, this.g, this.h, false, TruncateAt.END, paddingLeft);
        return true;
    }

    private void a() {
        this.b = false;
        requestLayout();
        invalidate();
    }

    private int b(int i) {
        int size = MeasureSpec.getSize(i);
        if (MeasureSpec.getMode(i) == 0) {
            return getContext().getResources().getDisplayMetrics().widthPixels;
        }
        return size;
    }

    private void b() {
        int colorForState = this.e.getColorForState(getDrawableState(), 0);
        if (colorForState != this.a.getColor()) {
            this.a.setColor(colorForState);
            invalidate();
        }
    }
}
