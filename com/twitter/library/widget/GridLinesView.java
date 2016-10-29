package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import defpackage.bdd;

/* compiled from: Twttr */
public class GridLinesView extends View {
    private final int a;
    private final int b;
    private final float c;
    private final int d;
    private final int e;
    private final int f;
    private final Paint g;
    private final Paint h;

    public GridLinesView(Context context) {
        this(context, null, 0);
    }

    public GridLinesView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GridLinesView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.GridLinesView, i, 0);
        this.c = (float) obtainStyledAttributes.getDimensionPixelSize(bdd.GridLinesView_grid_line_width, 0);
        this.a = obtainStyledAttributes.getInt(bdd.GridLinesView_number_of_vertical_lines, 0);
        this.b = obtainStyledAttributes.getInt(bdd.GridLinesView_number_of_horizontal_lines, 0);
        this.d = obtainStyledAttributes.getColor(bdd.GridLinesView_grid_line_color, 0);
        this.e = obtainStyledAttributes.getDimensionPixelSize(bdd.GridLinesView_line_stroke_width, 0);
        this.f = obtainStyledAttributes.getColor(bdd.GridLinesView_line_stroke_color, 0);
        obtainStyledAttributes.recycle();
        this.g = new Paint();
        this.g.setColor(this.d);
        this.g.setStrokeWidth(this.c);
        this.h = new Paint();
        this.h.setColor(this.f);
        this.h.setStrokeWidth((float) this.e);
    }

    protected void onDraw(Canvas canvas) {
        float height = (float) getHeight();
        float width = (float) getWidth();
        float f = height / ((float) (this.b + 1));
        float f2 = width / ((float) (this.a + 1));
        for (int i = 1; i <= this.b; i++) {
            float f3 = f * ((float) i);
            float f4 = this.c;
            canvas.drawLine(0.0f, f3, width, f3, this.g);
            canvas.drawLine(0.0f, f3 - f4, width, f3 - f4, this.h);
            f3 += f4;
            canvas.drawLine(0.0f, r6, width, f3 + f4, this.h);
        }
        for (int i2 = 1; i2 <= this.a; i2++) {
            float f5 = f2 * ((float) i2);
            float f6 = this.c;
            canvas.drawLine(f5, 0.0f, f5, height, this.g);
            canvas.drawLine(f5 - f6, 0.0f, f5 - f6, height, this.h);
            f5 += f6;
            canvas.drawLine(r4, 0.0f, f5 + f6, height, this.h);
        }
    }
}
