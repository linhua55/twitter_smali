package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class Divot extends View {
    private static final Direction[] a;
    private final Direction b;
    private final Paint c;
    private final Path d;

    /* compiled from: Twttr */
    public enum Direction {
        TOP(0),
        RIGHT(1),
        BOTTOM(2),
        LEFT(3);
        
        final int mNativeInt;

        private Direction(int i) {
            this.mNativeInt = i;
        }
    }

    static {
        a = new Direction[]{Direction.TOP, Direction.RIGHT, Direction.BOTTOM, Direction.LEFT};
    }

    public Divot(Context context) {
        this(context, null);
    }

    public Divot(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Divot(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.Divot, i, 0);
        this.c = new Paint(1);
        this.c.setStyle(Style.FILL_AND_STROKE);
        this.c.setColor(obtainStyledAttributes.getColor(1, -16777216));
        this.b = a[obtainStyledAttributes.getInt(0, 0)];
        obtainStyledAttributes.recycle();
        this.d = new Path();
        a(getWidth(), getHeight());
    }

    protected void a(int i, int i2) {
        this.d.reset();
        switch (af.a[this.b.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.d.moveTo((float) i, (float) (i2 / 2));
                this.d.lineTo(0.0f, (float) i2);
                this.d.lineTo(0.0f, 0.0f);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                this.d.moveTo((float) (i / 2), (float) i2);
                this.d.lineTo((float) i, 0.0f);
                this.d.lineTo(0.0f, 0.0f);
                break;
            case Util.TYPE_OTHER /*3*/:
                this.d.moveTo(0.0f, (float) (i2 / 2));
                this.d.lineTo((float) i, (float) i2);
                this.d.lineTo((float) i, 0.0f);
                break;
            default:
                this.d.moveTo(0.0f, (float) i2);
                this.d.lineTo((float) (i / 2), 0.0f);
                this.d.lineTo((float) i, (float) i2);
                break;
        }
        this.d.close();
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a(i, i2);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.d, this.c);
    }
}
