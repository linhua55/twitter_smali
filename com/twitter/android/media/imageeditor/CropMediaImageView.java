package com.twitter.android.media.imageeditor;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.twitter.library.media.widget.CroppableImageView;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.math.c;

/* compiled from: Twttr */
public class CropMediaImageView extends MediaImageView {
    final CroppableImageView a;

    public CropMediaImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CropMediaImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, (ImageView) View.inflate(context, 2130968708, null), true);
        this.a = (CroppableImageView) getImageView();
    }

    public void a(ImageResponse imageResponse, Drawable drawable) {
        c normalizedImageSelection = this.a.getNormalizedImageSelection();
        super.a(imageResponse, drawable);
        this.a.setImageSelection(normalizedImageSelection);
    }
}
