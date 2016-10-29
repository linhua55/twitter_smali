package com.twitter.internal.android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.twitter.ui.widget.UnpaddedTypefacesTextView;
import com.twitter.util.aj;
import com.twitter.util.t;
import defpackage.bcu;

/* compiled from: Twttr */
public class InterestSectionBadge extends UnpaddedTypefacesTextView implements e {
    private String a;
    private final RectF b;
    private final Paint c;

    public InterestSectionBadge(Context context) {
        this(context, null);
    }

    public InterestSectionBadge(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InterestSectionBadge(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = TtmlNode.ANONYMOUS_REGION_ID;
        this.b = new RectF();
        this.c = new Paint();
        this.c.setAntiAlias(true);
        this.c.setColor(context.getResources().getColor(bcu.medium_gray));
        this.c.setStyle(Style.FILL);
    }

    public void setBadgeNumber(int i) {
        CharSequence a = a(i);
        if (!this.a.equals(a)) {
            this.a = a;
            if (aj.b(a)) {
                setText(a);
                setVisibility(0);
            } else {
                setVisibility(8);
            }
            invalidate();
        }
    }

    private static String a(int i) {
        if (i <= 0) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        return t.a((long) i, 9);
    }

    public void setBadgeMode(int i) {
    }

    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.b.set(0.0f, 0.0f, (float) getMeasuredWidth(), (float) getMeasuredHeight());
    }

    public void onDraw(Canvas canvas) {
        canvas.drawRoundRect(this.b, ((float) getHeight()) / 2.0f, ((float) getHeight()) / 2.0f, this.c);
        super.onDraw(canvas);
    }
}
