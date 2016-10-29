package com.twitter.library.util;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.support.annotation.ColorInt;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.media.ui.image.RichImageView;

/* compiled from: Twttr */
public class p {
    public static Drawable a(UserImageView userImageView, int i, @ColorInt int i2) {
        Drawable gradientDrawable = new GradientDrawable();
        float[] cornerRadii = ((RichImageView) userImageView.getImageView()).getCornerRadii();
        float f = (cornerRadii == null || cornerRadii.length <= 0) ? 0.0f : cornerRadii[0];
        gradientDrawable.setCornerRadius(f + ((float) i));
        gradientDrawable.setColor(i2);
        return gradientDrawable;
    }
}
