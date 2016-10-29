package com.twitter.android.moments.ui;

import android.content.Context;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: Twttr */
public class NoHardwareLayerImageView extends ImageView {
    public NoHardwareLayerImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayerType(0, null);
    }

    public void setLayerType(int i, Paint paint) {
        if (i != 2) {
            super.setLayerType(i, paint);
        }
    }
}
