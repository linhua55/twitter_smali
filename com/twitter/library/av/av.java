package com.twitter.library.av;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.twitter.model.card.property.ImageSpec;
import rx.o;

/* compiled from: Twttr */
public interface av {
    void a();

    void b();

    o<Bitmap> getThumbnailBitmap();

    View getView();

    void setImageSpec(ImageSpec imageSpec);

    void setPlaceholderDrawable(Drawable drawable);

    void setScaleType(ScaleType scaleType);
}
