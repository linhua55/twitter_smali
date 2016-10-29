package com.twitter.android.moments.ui.guide;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import com.twitter.android.moments.ui.a;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
public class BadgeableMediaImageView extends MediaImageView implements a {
    static final /* synthetic */ boolean a;
    private final Paint i;
    private final a j;
    private final RectF k;
    private final Path l;
    private final int m;
    private Bitmap n;
    private Canvas o;
    private boolean p;

    static {
        a = !BadgeableMediaImageView.class.desiredAssertionStatus();
    }

    public BadgeableMediaImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k = new RectF();
        this.l = new Path();
        setWillNotDraw(false);
        Resources resources = getResources();
        this.j = new a(resources);
        this.m = resources.getDimensionPixelSize(2131689848);
        this.i = new Paint(this.j.c);
        this.i.setXfermode(new PorterDuffXfermode(Mode.CLEAR));
        if (VERSION.SDK_INT < 18) {
            setLayerType(1, null);
        }
    }

    public void setIsBadged(boolean z) {
        if (this.p != z) {
            this.p = z;
            invalidate();
        }
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i > 0 && i2 > 0) {
            if (this.n != null) {
                this.n.recycle();
            }
            this.n = Bitmap.createBitmap(i, i2, Config.ARGB_8888);
            this.o = new Canvas(this.n);
            this.k.set(0.0f, 0.0f, (float) i, (float) i2);
            this.l.addRoundRect(this.k, (float) this.m, (float) this.m, Direction.CW);
        }
    }

    public void draw(Canvas canvas) {
        if (!a && this.n == null) {
            throw new AssertionError();
        } else if (a || this.o != null) {
            this.o.clipPath(this.l, Op.REPLACE);
            super.draw(this.o);
            if (this.p) {
                this.o.drawCircle((float) getWidth(), 0.0f, (float) (this.j.a + this.j.b), this.i);
            }
            canvas.drawBitmap(this.n, 0.0f, 0.0f, null);
        } else {
            throw new AssertionError();
        }
    }
}
