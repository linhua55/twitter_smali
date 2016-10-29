package com.twitter.media.ui.image;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.twitter.media.ui.k;

/* compiled from: Twttr */
public class FixedSizeImageView extends ImageView {
    private boolean a;
    private boolean b;

    public FixedSizeImageView(Context context) {
        super(context);
        a(context, null);
    }

    public FixedSizeImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public FixedSizeImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            this.a = true;
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.FixedSizeImageView);
        try {
            this.a = obtainStyledAttributes.getBoolean(k.FixedSizeImageView_fixedSize, true);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void setIsFixedSize(boolean z) {
        this.a = z;
    }

    protected void setIgnoreLayoutRequest(boolean z) {
        this.b = z;
    }

    protected boolean getIgnoreLayoutRequest() {
        return this.b;
    }

    public void requestLayout() {
        if (this.a && this.b) {
            invalidate();
        } else {
            super.requestLayout();
        }
    }

    public void setImageResource(int i) {
        this.b = this.a;
        try {
            super.setImageResource(i);
        } finally {
            this.b = false;
        }
    }

    public void setImageURI(Uri uri) {
        this.b = this.a;
        try {
            super.setImageURI(uri);
        } finally {
            this.b = false;
        }
    }

    public void setImageDrawable(Drawable drawable) {
        this.b = this.a;
        try {
            super.setImageDrawable(drawable);
        } finally {
            this.b = false;
        }
    }

    public void setScaleType(ScaleType scaleType) {
        this.b = this.a;
        try {
            super.setScaleType(scaleType);
        } finally {
            this.b = false;
        }
    }
}
