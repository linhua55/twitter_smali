package com.twitter.ui.widget.slidingtab;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;

/* compiled from: Twttr */
class f extends LinearLayout {
    private final Paint a;
    private int b;
    private int c;
    private final Paint d;
    private final Paint e;
    private final float f;
    private int g;
    private float h;
    private View i;
    private e j;
    private final h k;

    f(Context context) {
        this(context, null);
    }

    f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setWillNotDraw(false);
        float f = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16842800, typedValue, true);
        int a = a(typedValue.data, (byte) 38);
        this.k = new h();
        this.k.a(-13388315);
        this.k.b(a(r1, (byte) 32));
        this.a = new Paint();
        this.a.setColor(a);
        this.c = (int) (8.0f * f);
        this.d = new Paint();
        this.f = 0.5f;
        this.e = new Paint();
        this.e.setStrokeWidth((float) ((int) (f * 1.0f)));
    }

    void a(e eVar) {
        this.j = eVar;
        invalidate();
    }

    void a(int... iArr) {
        this.j = null;
        this.k.a(iArr);
        invalidate();
    }

    void b(int... iArr) {
        this.j = null;
        this.k.b(iArr);
        invalidate();
    }

    void a(int i) {
        if (this.i != null) {
            this.i.setSelected(false);
        }
        View childAt = getChildAt(i);
        if (childAt != null) {
            childAt.setSelected(true);
        }
        this.i = childAt;
    }

    void a(int i, float f) {
        this.g = i;
        this.h = f;
        invalidate();
    }

    void b(int i) {
        if (this.b != i) {
            this.b = i;
            invalidate();
        }
    }

    void c(int i) {
        if (this.a.getColor() != i) {
            this.a.setColor(i);
            invalidate();
        }
    }

    void d(int i) {
        if (this.c != i) {
            this.c = i;
            invalidate();
        }
    }

    protected void onDraw(Canvas canvas) {
        int height = getHeight();
        int childCount = getChildCount();
        int min = (int) (Math.min(Math.max(0.0f, this.f), 1.0f) * ((float) height));
        if (this.j != null) {
            e eVar = this.j;
        } else {
            Object obj = this.k;
        }
        if (this.b > 0) {
            canvas.drawRect(0.0f, (float) (height - this.b), (float) getWidth(), (float) height, this.a);
        }
        if (childCount > 0) {
            int i;
            View childAt = getChildAt(this.g);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int a = eVar.a(this.g);
            if (this.h <= 0.0f || this.g >= getChildCount() - 1) {
                i = left;
                left = right;
            } else {
                i = eVar.a(this.g + 1);
                if (a != i) {
                    a = a(i, a, this.h);
                }
                View childAt2 = getChildAt(this.g + 1);
                left = (int) ((((float) left) * (1.0f - this.h)) + (this.h * ((float) childAt2.getLeft())));
                int right2 = (int) ((((float) childAt2.getRight()) * this.h) + (((float) right) * (1.0f - this.h)));
                i = left;
                left = right2;
            }
            this.d.setColor(a);
            canvas.drawRect((float) i, (float) (height - this.c), (float) left, (float) height, this.d);
        }
        int i2 = (height - min) / 2;
        for (height = 0; height < childCount - 1; height++) {
            childAt = getChildAt(height);
            this.e.setColor(eVar.b(height));
            canvas.drawLine((float) childAt.getRight(), (float) i2, (float) childAt.getRight(), (float) (i2 + min), this.e);
        }
    }

    private static int a(int i, byte b) {
        return Color.argb(b, Color.red(i), Color.green(i), Color.blue(i));
    }

    private static int a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.rgb((int) ((((float) Color.red(i)) * f) + (((float) Color.red(i2)) * f2)), (int) ((((float) Color.green(i)) * f) + (((float) Color.green(i2)) * f2)), (int) ((f2 * ((float) Color.blue(i2))) + (((float) Color.blue(i)) * f)));
    }
}
