package com.twitter.android.moments.ui;

import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import com.google.android.exoplayer.util.NalUnitUtil;

/* compiled from: Twttr */
public class f extends Drawable {
    private final Path a;
    private final Paint b;
    private final boolean c;
    private ColorFilter d;
    private int e;

    public f(Configuration configuration) {
        this(new Path(), configuration);
    }

    public f(Path path, Configuration configuration) {
        this.b = new Paint(1);
        this.e = NalUnitUtil.EXTENDED_SAR;
        this.a = path;
        this.c = a(configuration);
    }

    private boolean a(Configuration configuration) {
        return VERSION.SDK_INT >= 17 && configuration.getLayoutDirection() == 1;
    }

    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        a();
    }

    public void draw(Canvas canvas) {
        this.b.setColorFilter(this.d);
        this.b.setAlpha(this.e);
        canvas.drawPath(this.a, this.b);
    }

    public void setAlpha(int i) {
        this.e = i;
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.d = colorFilter;
    }

    public int getOpacity() {
        return this.e;
    }

    private void a() {
        this.a.rewind();
        Rect bounds = getBounds();
        int i = this.c ? bounds.right : bounds.left;
        int i2 = this.c ? bounds.left : bounds.right;
        this.a.moveTo((float) i2, (float) bounds.top);
        this.a.lineTo((float) i2, (float) bounds.bottom);
        this.a.lineTo((float) i, (float) (((bounds.bottom - bounds.top) / 2) + bounds.top));
        this.a.close();
    }
}
