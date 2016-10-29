package com.twitter.android.media.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.exoplayer.C;
import com.twitter.android.util.v;
import com.twitter.library.media.widget.AnimatedGifView;
import com.twitter.model.media.foundmedia.c;
import com.twitter.util.math.Size;
import java.util.List;

/* compiled from: Twttr */
class al extends ViewGroup {
    final /* synthetic */ GifCategoriesView a;

    al(GifCategoriesView gifCategoriesView, Context context, int i) {
        this.a = gifCategoriesView;
        super(context);
        LayoutInflater from = LayoutInflater.from(context);
        for (int i2 = 0; i2 < i; i2++) {
            View inflate = from.inflate(2130968849, this, false);
            inflate.setOnClickListener(gifCategoriesView.a);
            addView(inflate);
        }
        setPadding(0, 0, 0, gifCategoriesView.b);
    }

    protected void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i);
        int childCount = getChildCount();
        int i3 = (size - ((childCount - 1) * this.a.b)) / childCount;
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT);
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                childAt.measure(makeMeasureSpec, makeMeasureSpec);
            }
        }
        setMeasuredDimension(size, this.a.b + i3);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount() - 1;
        int i5 = i4 - i2;
        int i6 = 0;
        int i7 = 0;
        while (i6 <= childCount) {
            int measuredWidth;
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                measuredWidth = i6 == childCount ? i3 : childAt.getMeasuredWidth() + i7;
                childAt.layout(i7, 0, measuredWidth, i5);
                int i8 = (measuredWidth + this.a.b) + 1;
                a((AnimatedGifView) childAt.findViewById(2131952522), (c) childAt.getTag(2131951661));
                measuredWidth = i8;
            } else {
                measuredWidth = i7;
            }
            i6++;
            i7 = measuredWidth;
        }
    }

    void a(List<c> list, int i) {
        int childCount = getChildCount();
        int i2 = i * childCount;
        int length = v.a.length;
        int size = list.size();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            int i4 = i3 + i2;
            if (i4 >= size) {
                childAt.setVisibility(8);
            } else {
                childAt.setVisibility(0);
                childAt.setBackgroundResource(v.a[i4 % length]);
                c cVar = (c) list.get(i4);
                childAt.setTag(2131951661, cVar);
                ((TextView) childAt.findViewById(2131951683)).setText(cVar.a);
                AnimatedGifView animatedGifView = (AnimatedGifView) childAt.findViewById(2131952522);
                animatedGifView.setListener(AnimatedGifView.a);
                if (animatedGifView.getWidth() > 0 && animatedGifView.getHeight() > 0) {
                    a(animatedGifView, cVar);
                }
            }
        }
    }

    private void a(AnimatedGifView animatedGifView, c cVar) {
        animatedGifView.setResourceUri(v.a(cVar.c, Size.a(animatedGifView), this.a.d));
    }
}
