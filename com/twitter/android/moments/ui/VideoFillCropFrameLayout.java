package com.twitter.android.moments.ui;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.library.av.bc;
import com.twitter.library.av.playback.AVPlayerAttachment;

/* compiled from: Twttr */
public class VideoFillCropFrameLayout extends FillCropFrameLayout {
    private final bc a;
    private AVPlayerAttachment b;

    public VideoFillCropFrameLayout(Context context) {
        this(context, null);
    }

    public VideoFillCropFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, new bc());
    }

    public VideoFillCropFrameLayout(Context context, AttributeSet attributeSet, bc bcVar) {
        super(context, attributeSet);
        this.a = bcVar;
    }

    public void setAVPlayerAttachment(AVPlayerAttachment aVPlayerAttachment) {
        this.b = aVPlayerAttachment;
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        if (this.b != null) {
            this.b.a().b(getVisibilityPercentage());
        }
    }

    private float getVisibilityPercentage() {
        return this.a.a(this, getCropRect());
    }
}
