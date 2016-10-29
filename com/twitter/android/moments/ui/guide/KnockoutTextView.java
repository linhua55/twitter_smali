package com.twitter.android.moments.ui.guide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public class KnockoutTextView extends TypefacesTextView {
    private Paint a;
    private Bitmap b;
    private Canvas c;
    private Drawable d;
    private Bitmap e;
    private Canvas f;
    private Size g;

    public KnockoutTextView(Context context) {
        super(context);
        a();
    }

    public KnockoutTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public KnockoutTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        this.a = new Paint();
        this.a.setXfermode(new PorterDuffXfermode(Mode.DST_OUT));
        super.setBackgroundDrawable(new ColorDrawable(0));
    }

    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.d = drawable;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth == -1 || intrinsicHeight == -1) {
            intrinsicWidth = getWidth();
            intrinsicHeight = getHeight();
        }
        if (this.g != null) {
            intrinsicWidth = this.g.a();
            intrinsicHeight = this.g.b();
        }
        if (intrinsicWidth != 0 && intrinsicHeight != 0) {
            a(intrinsicWidth, intrinsicHeight);
        }
    }

    private void a(int i, int i2) {
        this.d.setBounds(0, 0, i, i2);
        invalidate();
    }

    public void setBackgroundColor(int i) {
        setBackgroundDrawable(new ColorDrawable(i));
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i > 0 && i2 > 0) {
            this.e = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
            this.f = new Canvas(this.e);
            this.b = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
            this.c = new Canvas(this.b);
            this.g = Size.a(i, i2);
            if (i != i3 || i2 != i4) {
                a(i, i2);
            }
        }
    }

    protected void onDraw(Canvas canvas) {
        this.d.draw(this.f);
        this.c.drawColor(ViewCompat.MEASURED_STATE_MASK, Mode.CLEAR);
        super.onDraw(this.c);
        this.f.drawBitmap(this.b, 0.0f, 0.0f, this.a);
        canvas.drawBitmap(this.e, 0.0f, 0.0f, null);
    }
}
