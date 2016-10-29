package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.graphics.Paint;
import com.twitter.library.av.VideoThumbnailView;
import com.twitter.model.card.property.ImageSpec;

/* compiled from: Twttr */
public class MomentsVideoThumbnailView extends VideoThumbnailView {
    public MomentsVideoThumbnailView(Context context) {
        super(context);
        setLayerType(0, null);
        setBackgroundDrawable(null);
    }

    public void setImageSpec(ImageSpec imageSpec) {
        a(imageSpec, false);
    }

    public void setLayerType(int i, Paint paint) {
        if (i != 2) {
            super.setLayerType(i, paint);
        }
    }
}
