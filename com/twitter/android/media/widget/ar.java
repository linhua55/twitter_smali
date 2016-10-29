package com.twitter.android.media.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import com.google.android.exoplayer.C;
import com.twitter.android.util.v;
import com.twitter.library.media.widget.AnimatedGifView;
import com.twitter.model.media.foundmedia.f;
import com.twitter.util.math.Size;
import java.util.List;

/* compiled from: Twttr */
class ar extends ViewGroup {
    as a;
    final /* synthetic */ GifGalleryView b;

    ar(GifGalleryView gifGalleryView, Context context) {
        this.b = gifGalleryView;
        super(context);
    }

    protected void onMeasure(int i, int i2) {
        if (this.a == null || this.a.a.isEmpty()) {
            super.onMeasure(i, i2);
            return;
        }
        List<f> list = this.a.a;
        float f = 0.0f;
        for (f fVar : list) {
            f = fVar.h.c.e() + f;
        }
        int size = MeasureSpec.getSize(i);
        int childCount = getChildCount();
        int i3 = (int) (((float) (size - ((childCount - 1) * this.b.c))) / f);
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT);
        for (int i4 = 0; i4 < childCount; i4++) {
            getChildAt(i4).measure(MeasureSpec.makeMeasureSpec((int) (((f) list.get(i4)).h.c.e() * ((float) i3)), C.ENCODING_PCM_32BIT), makeMeasureSpec);
        }
        setMeasuredDimension(size, i3);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount() - 1;
        int i5 = i4 - i2;
        int i6 = 0;
        int i7 = 0;
        while (i6 <= childCount) {
            View childAt = getChildAt(i6);
            int measuredWidth = i6 == childCount ? i3 : childAt.getMeasuredWidth() + i7;
            childAt.layout(i7, 0, measuredWidth, i5);
            i7 = (measuredWidth + this.b.c) + 1;
            i6++;
        }
    }

    void a(as asVar) {
        this.a = asVar;
        LayoutInflater from = LayoutInflater.from(getContext());
        int childCount = getChildCount();
        int i = 0;
        for (f fVar : asVar.a) {
            View view;
            if (i < childCount) {
                view = (AnimatedGifView) getChildAt(i);
                view.setVisibility(0);
            } else {
                AnimatedGifView animatedGifView = (AnimatedGifView) from.inflate(2130968850, this, false);
                addView(animatedGifView);
                animatedGifView.setOnClickListener(this.b.a);
                animatedGifView.setOnLongClickListener(this.b.b);
                animatedGifView.setTag(2131951732, "found_media");
            }
            view.setTag(2131951662, fVar);
            view.setResourceUri(v.a(fVar.g, Size.a(view), this.b.e));
            view.setListener(AnimatedGifView.a);
            int[] iArr = v.a;
            view.setBackgroundResource(iArr[this.a.a(i) % iArr.length]);
            i++;
        }
        for (int i2 = childCount - 1; i2 >= i; i2--) {
            removeViewAt(i2);
        }
    }
}
