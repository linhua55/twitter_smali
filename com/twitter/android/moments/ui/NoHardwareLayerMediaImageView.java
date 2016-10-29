package com.twitter.android.moments.ui;

import android.content.Context;
import android.graphics.Paint;
import android.util.AttributeSet;
import com.twitter.media.ui.image.MediaImageView;

/* compiled from: Twttr */
public class NoHardwareLayerMediaImageView extends MediaImageView {
    public NoHardwareLayerMediaImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setLayerType(0, null);
    }

    public void setLayerType(int i, Paint paint) {
        if (i != 2) {
            super.setLayerType(i, paint);
        }
    }
}
