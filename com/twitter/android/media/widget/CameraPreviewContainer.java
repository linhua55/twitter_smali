package com.twitter.android.media.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import com.twitter.android.media.camera.CameraPreviewTextureView;
import com.twitter.android.media.camera.m;
import com.twitter.media.ui.image.AspectRatioFrameLayout;

/* compiled from: Twttr */
public class CameraPreviewContainer extends AspectRatioFrameLayout {
    public final CameraPreviewTextureView a;

    public CameraPreviewContainer(Context context) {
        this(context, null, 0);
    }

    public CameraPreviewContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CameraPreviewContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new CameraPreviewTextureView(context, m.a(context));
    }

    public void a(float f, boolean z) {
        if (this.c != f) {
            this.c = f;
            if (z) {
                requestLayout();
            }
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        layout(i, i2, i3, i4);
        View view = (View) getParent();
        int width = view.getWidth();
        int height = view.getHeight();
        int width2 = (getWidth() - width) / 2;
        int height2 = (getHeight() - height) / 2;
        this.a.layout(width2, height2, width + width2, height + height2);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        addView(this.a, 0);
        LayoutParams layoutParams = this.a.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(Math.min(getMeasuredWidth(), MeasureSpec.getSize(i)), Math.min(getMeasuredHeight(), MeasureSpec.getSize(i2)));
    }
}
