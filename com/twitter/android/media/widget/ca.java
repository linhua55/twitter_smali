package com.twitter.android.media.widget;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.exoplayer.util.NalUnitUtil;

/* compiled from: Twttr */
class ca extends br {
    final /* synthetic */ VideoSegmentEditView b;

    ca(VideoSegmentEditView videoSegmentEditView) {
        this.b = videoSegmentEditView;
        super((View) videoSegmentEditView, 150, 2131034151);
    }

    public void a(float f) {
        if (this.b.k.getIndicatorDrawable() != null) {
            this.b.k.getIndicatorDrawable().setAlpha(255 - ((int) (255.0f * f)));
            this.b.k.c();
        }
    }

    public void d() {
        this.b.e();
        Drawable indicatorDrawable = this.b.k.getIndicatorDrawable();
        if (indicatorDrawable != null) {
            indicatorDrawable.setAlpha(NalUnitUtil.EXTENDED_SAR);
        }
    }
}
