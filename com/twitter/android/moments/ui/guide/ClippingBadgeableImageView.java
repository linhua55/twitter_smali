package com.twitter.android.moments.ui.guide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;

/* compiled from: Twttr */
public class ClippingBadgeableImageView extends BadgeableRichImageView {
    static final /* synthetic */ boolean c;
    private Bitmap d;
    private Canvas e;
    private final Paint f;

    static {
        c = !ClippingBadgeableImageView.class.desiredAssertionStatus();
    }

    public ClippingBadgeableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = new Paint(this.a.c);
        this.f.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.d != null) {
            this.d.recycle();
        }
        if (i > 0 && i2 > 0) {
            this.d = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
            this.e = new Canvas(this.d);
        }
    }

    public void draw(Canvas canvas) {
        if (!this.b) {
            super.draw(canvas);
        } else if (!c && this.d == null) {
            throw new AssertionError();
        } else if (c || this.e != null) {
            super.draw(this.e);
            this.e.drawCircle((float) getWidth(), 0.0f, (float) (this.a.a + this.a.b), this.f);
            canvas.drawBitmap(this.d, 0.0f, 0.0f, null);
            canvas.drawCircle((float) getWidth(), 0.0f, (float) this.a.a, this.a.c);
        } else {
            throw new AssertionError();
        }
    }
}
