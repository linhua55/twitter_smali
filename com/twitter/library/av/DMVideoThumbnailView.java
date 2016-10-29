package com.twitter.library.av;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.r;
import defpackage.bcu;

/* compiled from: Twttr */
public class DMVideoThumbnailView extends VideoThumbnailView {
    private final View a;

    public DMVideoThumbnailView(Context context) {
        this(context, null);
    }

    public DMVideoThumbnailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DMVideoThumbnailView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, VideoThumbnailView.d(), new ay());
    }

    public DMVideoThumbnailView(Context context, AttributeSet attributeSet, int i, boolean z, ay ayVar) {
        super(context, attributeSet, i, z, ayVar, new r());
        this.a = new View(context);
        this.a.setLayoutParams(new LayoutParams(-1, -1));
        this.a.setBackgroundDrawable(new ColorDrawable(ContextCompat.getColor(context, bcu.placeholder_bg)));
        this.a.setVisibility(8);
        addView(this.a);
    }

    public void a(String str, boolean z) {
        super.a(str, z);
        this.a.bringToFront();
        this.a.setVisibility(0);
    }

    public void a(MediaImageView mediaImageView, ImageResponse imageResponse) {
        super.a(mediaImageView, imageResponse);
        this.a.setVisibility(8);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.a.measure(i, i2);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.a.layout(0, 0, i3 - i, i4 - i2);
    }
}
