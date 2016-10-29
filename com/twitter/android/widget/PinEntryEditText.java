package com.twitter.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.util.AttributeSet;
import android.widget.EditText;
import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;
import com.twitter.android.mx;
import com.twitter.ui.widget.ax;

/* compiled from: Twttr */
public class PinEntryEditText extends EditText {
    private int a;
    private Paint b;
    private Paint c;
    private final float d;
    private float e;
    private final float f;
    private float g;
    private float h;
    private dk i;

    public PinEntryEditText(Context context) {
        this(context, null);
    }

    public PinEntryEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PinEntryEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.PinEntryEditText);
        Resources resources = getResources();
        try {
            this.a = obtainStyledAttributes.getInt(0, 0);
            this.d = (float) obtainStyledAttributes.getDimensionPixelSize(2, resources.getDimensionPixelSize(2131690305));
            this.f = (float) obtainStyledAttributes.getDimensionPixelSize(3, resources.getDimensionPixelSize(2131690306));
            if (this.a == 0) {
                this.a = 6;
                setFilters(new InputFilter[]{new LengthFilter(6)});
            }
            a();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void a() {
        this.b = new Paint();
        this.b.setStyle(Style.STROKE);
        this.b.setColor(getCurrentTextColor());
        this.b.setTextSize(getTextSize());
        this.b.setTypeface(ax.a(getContext()).a);
        this.b.setAntiAlias(true);
        this.c = new Paint();
        this.c.setStyle(Style.STROKE);
        this.c.setColor(getCurrentTextColor());
        this.c.setStrokeWidth(a(1.0f));
        this.c.setAntiAlias(true);
        this.e = this.d / 2.0f;
        this.g = ((this.d + this.f) * ((float) this.a)) - this.f;
        this.h = this.b.measureText("0") / 2.0f;
        addTextChangedListener(new dj(this));
        setMovementMethod(null);
        setFocusable(true);
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension((int) this.g, (int) this.d);
    }

    protected void onDraw(Canvas canvas) {
        String obj = getText().toString();
        int length = obj.length();
        for (int i = 0; i < length; i++) {
            a(canvas, obj.charAt(i), (this.e - this.h) + ((this.d + this.f) * ((float) i)), this.d * AdaptiveEvaluator.DEFAULT_BANDWIDTH_FRACTION);
        }
        while (length < this.a) {
            a(canvas, (this.d + this.f) * ((float) length), this.e);
            length++;
        }
    }

    protected void onSelectionChanged(int i, int i2) {
        int length = length();
        if (!(i == length && i2 == length)) {
            setSelection(length);
        }
        super.onSelectionChanged(i, i2);
    }

    public int getFullLength() {
        return this.a;
    }

    private void a(Canvas canvas, float f, float f2) {
        canvas.drawLine(f, f2, f + this.d, f2, this.c);
    }

    private void a(Canvas canvas, char c, float f, float f2) {
        canvas.drawText(Character.toString(c), f, f2, this.b);
    }

    private float a(float f) {
        return getContext().getResources().getDisplayMetrics().density * f;
    }

    public void setOnFilledInputListener(dk dkVar) {
        this.i = dkVar;
    }
}
