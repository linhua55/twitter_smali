package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.widget.ImageView;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public final class zzmc extends ImageView {
    private int a;
    private vc b;
    private int c;
    private float d;

    protected void onDraw(Canvas canvas) {
        if (this.b != null) {
            canvas.clipPath(this.b.a(getWidth(), getHeight()));
        }
        super.onDraw(canvas);
        if (this.a != 0) {
            canvas.drawColor(this.a);
        }
    }

    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        int i3;
        super.onMeasure(i, i2);
        switch (this.c) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                measuredHeight = getMeasuredHeight();
                i3 = (int) (((float) measuredHeight) * this.d);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                i3 = getMeasuredWidth();
                measuredHeight = (int) (((float) i3) / this.d);
                break;
            default:
                return;
        }
        setMeasuredDimension(i3, measuredHeight);
    }
}
