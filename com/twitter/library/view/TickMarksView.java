package com.twitter.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import defpackage.bcu;
import defpackage.bdd;

/* compiled from: Twttr */
public class TickMarksView extends View {
    private final Paint a;
    private final float b;
    private final float c;
    private final float d;
    private final float e;
    private final float f;
    private int g;
    private int h;
    private y[] i;
    private int j;
    private boolean k;
    private int l;

    public TickMarksView(Context context) {
        this(context, null, 0);
    }

    public TickMarksView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TickMarksView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new Paint();
        this.a.setAntiAlias(false);
        this.a.setColor(getResources().getColor(bcu.medium_gray));
        this.a.setTypeface(Typeface.DEFAULT_BOLD);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.TickMarksView, i, 0);
        try {
            this.c = (float) obtainStyledAttributes.getDimensionPixelSize(bdd.TickMarksView_tickMarksMinGap, 0);
            this.d = (float) obtainStyledAttributes.getDimensionPixelSize(bdd.TickMarksView_tickMarksMarkWidth, 0);
            this.e = (float) obtainStyledAttributes.getDimensionPixelSize(bdd.TickMarksView_tickMarkLabelMarginLeft, 0);
            this.f = (float) obtainStyledAttributes.getDimensionPixelSize(bdd.TickMarksView_tickMarkLabelMarginTop, 0);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(bdd.TickMarksView_android_textSize, 0);
            if (dimensionPixelSize > 0) {
                this.a.setTextSize((float) dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            Rect rect = new Rect();
            this.a.getTextBounds("8", 0, 1, rect);
            this.b = (float) rect.height();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(int i, int i2) {
        if (this.g != i || this.h != i2) {
            this.g = i;
            this.h = i2;
            invalidate();
        }
    }

    public void setTickMarks(y[] yVarArr) {
        if (this.i != yVarArr) {
            this.i = yVarArr;
            invalidate();
        }
    }

    public void a(int i) {
        if (this.j != i) {
            this.j = i;
            invalidate();
        }
    }

    public void a(boolean z) {
        if (this.k != z) {
            this.k = z;
            invalidate();
        }
    }

    public void setTextAlpha(int i) {
        if (this.l != i) {
            this.l = i;
            invalidate();
        }
    }

    public void onDraw(Canvas canvas) {
        if (this.i != null && this.g < this.h) {
            float height = (float) getHeight();
            float height2 = (float) getHeight();
            float width = (float) getWidth();
            float f = width / ((float) (this.h - this.g));
            int length = this.i.length;
            int i = 0;
            int i2 = Integer.MAX_VALUE;
            while (i < length) {
                y yVar = this.i[i];
                int i3 = yVar.a;
                if (i < this.j || ((float) i3) * f >= this.c) {
                    float f2 = height2 - (yVar.b * height);
                    this.a.setStrokeWidth(this.d * yVar.c);
                    this.a.setAlpha(yVar.d);
                    int i4 = i3 - (this.g % i3);
                    int i5 = this.g - (this.g % i3);
                    while (true) {
                        float f3 = ((float) i4) * f;
                        if (f3 >= width) {
                            break;
                        }
                        int i6 = i5 + i3;
                        if (i6 % i2 != 0) {
                            canvas.drawLine(f3, f2, f3, height2, this.a);
                            if (this.k) {
                                String a = yVar.a(i6);
                                if (a != null) {
                                    this.a.setAlpha(this.l);
                                    this.a.setAntiAlias(true);
                                    canvas.drawText(a, f3 + this.e, (this.b + f2) + this.f, this.a);
                                    this.a.setAntiAlias(false);
                                    this.a.setAlpha(yVar.d);
                                }
                            }
                        }
                        i4 += i3;
                        i5 = i6;
                    }
                    i++;
                    i2 = i3;
                } else {
                    return;
                }
            }
        }
    }
}
