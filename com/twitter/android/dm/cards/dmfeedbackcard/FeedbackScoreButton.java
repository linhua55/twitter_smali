package com.twitter.android.dm.cards.dmfeedbackcard;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.util.AttributeSet;
import com.google.android.exoplayer.DefaultLoadControl;
import com.twitter.android.mx;
import com.twitter.android.revenue.card.h;
import com.twitter.ui.widget.TwitterButton;
import defpackage.bct;
import defpackage.bcu;
import java.text.NumberFormat;

/* compiled from: Twttr */
public class FeedbackScoreButton extends TwitterButton {
    private int a;
    private Paint c;
    private float d;
    private float e;
    private float f;
    private d g;
    private float h;

    public FeedbackScoreButton(Context context) {
        super(context);
        a(context, null, bct.buttonStyle, 0);
    }

    public FeedbackScoreButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet, bct.buttonStyle, 0);
    }

    public FeedbackScoreButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet, i, 0);
    }

    public int getButtonScore() {
        return this.a;
    }

    private void a(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, mx.FeedbackScoreButton, i, i2);
        try {
            this.a = obtainStyledAttributes.getInteger(0, 0);
            this.h = getResources().getDimension(2131689590);
            this.c = new Paint(1);
            this.c.setStrokeWidth(this.h);
            this.c.setTextSize(getResources().getDimension(2131689586));
            this.c.setTypeface(h.c);
            this.g = new d(context, 0, 10, DefaultLoadControl.DEFAULT_LOW_BUFFER_LOAD);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.d = (((float) Math.min(i - (getPaddingLeft() + getPaddingRight()), i2 - (getPaddingTop() + getPaddingBottom()))) - this.h) / 2.0f;
        this.e = ((float) getWidth()) / 2.0f;
        this.f = ((float) getHeight()) / 2.0f;
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        a(canvas);
        b(canvas);
    }

    private void a(Canvas canvas) {
        this.c.setColor(this.g.a(this.a));
        if (this.b) {
            this.c.setStyle(Style.FILL_AND_STROKE);
        } else {
            this.c.setStyle(Style.STROKE);
        }
        canvas.drawCircle(this.e, this.f, this.d, this.c);
    }

    private void b(Canvas canvas) {
        if (this.b) {
            this.c.setColor(getResources().getColor(bcu.white));
        } else {
            this.c.setColor(this.g.a(this.a));
        }
        this.c.setStyle(Style.FILL);
        String format = NumberFormat.getInstance().format((long) this.a);
        Rect rect = new Rect();
        this.c.setTextAlign(Align.LEFT);
        this.c.getTextBounds(format, 0, format.length(), rect);
        canvas.drawText(format, (this.e - ((float) Math.ceil((double) (((float) rect.width()) / 2.0f)))) - ((float) rect.left), (this.f + (((float) rect.height()) / 2.0f)) - ((float) rect.bottom), this.c);
    }
}
