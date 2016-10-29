package com.twitter.android.moments.ui.guide;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.util.AttributeSet;
import com.twitter.ui.widget.slidingtab.SlidingTabLayout;

/* compiled from: Twttr */
public class GuideCategoriesTabsLayout extends SlidingTabLayout {
    private final Shader a;
    private final Paint b;
    private final Matrix c;
    private final int d;
    private final int e;

    public GuideCategoriesTabsLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Paint();
        this.c = new Matrix();
        setWillNotDraw(false);
        setClipChildren(false);
        Resources resources = getResources();
        this.d = resources.getDimensionPixelSize(2131690190);
        this.e = resources.getDimensionPixelSize(2131690189);
        this.b.setXfermode(new PorterDuffXfermode(Mode.DST_OUT));
        this.a = new LinearGradient((float) this.d, 0.0f, (float) this.e, 0.0f, -16777216, 0, TileMode.CLAMP);
    }

    public void draw(Canvas canvas) {
        this.c.reset();
        this.c.postTranslate((float) (getScrollX() - this.e), 0.0f);
        this.a.setLocalMatrix(this.c);
        this.b.setShader(this.a);
        int scrollX = getScrollX() - getLeft();
        canvas.saveLayer((float) scrollX, 0.0f, (float) (canvas.getWidth() + scrollX), (float) canvas.getHeight(), null, 4);
        super.draw(canvas);
        canvas.drawRect((float) scrollX, 0.0f, (float) (canvas.getWidth() + scrollX), (float) canvas.getHeight(), this.b);
        canvas.restore();
    }
}
