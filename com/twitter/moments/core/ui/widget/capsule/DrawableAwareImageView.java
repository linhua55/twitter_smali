package com.twitter.moments.core.ui.widget.capsule;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.annotation.DrawableRes;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.widget.ImageView;

/* compiled from: Twttr */
public class DrawableAwareImageView extends ImageView {
    private a a;

    public DrawableAwareImageView(Context context) {
        super(context);
    }

    public DrawableAwareImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public DrawableAwareImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        a();
    }

    public void setImageResource(@DrawableRes int i) {
        super.setImageResource(i);
        a();
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        a();
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a();
    }

    public void setDrawableListener(a aVar) {
        this.a = aVar;
    }

    @VisibleForTesting
    void a() {
        if (this.a != null) {
            this.a.a(this);
        }
    }
}
