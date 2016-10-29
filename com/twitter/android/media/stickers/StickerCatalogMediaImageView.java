package com.twitter.android.media.stickers;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView.ScaleType;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.util.d;
import cqr;

/* compiled from: Twttr */
public class StickerCatalogMediaImageView extends MediaImageView {
    private static final cqr a;

    static {
        a = new cqr();
    }

    public StickerCatalogMediaImageView(Context context) {
        super(context, null, false);
        setClipChildren(false);
    }

    protected void a(Drawable drawable, boolean z) {
        View statusImageView = getStatusImageView();
        View imageView = getImageView();
        if (z) {
            super.a(drawable, true);
            return;
        }
        imageView.setVisibility(4);
        statusImageView.animate().cancel();
        statusImageView.setAlpha(1.0f);
        statusImageView.setVisibility(0);
        imageView.setScaleType(ScaleType.FIT_CENTER);
        imageView.setImageDrawable(drawable);
        d.a(imageView, Callback.DEFAULT_DRAG_ANIMATION_DURATION, 1.1f, a);
        ViewPropertyAnimator a = d.a(statusImageView, Callback.DEFAULT_DRAG_ANIMATION_DURATION, a, 4);
        if (a != null) {
            a.start();
        }
    }
}
