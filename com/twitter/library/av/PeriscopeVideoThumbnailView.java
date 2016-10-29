package com.twitter.library.av;

import android.content.Context;
import com.twitter.model.card.property.ImageSpec;

/* compiled from: Twttr */
public class PeriscopeVideoThumbnailView extends VideoThumbnailView {
    public PeriscopeVideoThumbnailView(Context context) {
        super(context);
    }

    public void setImageSpec(ImageSpec imageSpec) {
        a(imageSpec, false);
    }
}
