package com.twitter.android.moments.ui;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.library.av.bc;
import com.twitter.library.widget.a;
import com.twitter.library.widget.c;

/* compiled from: Twttr */
public class AutoplayableVideoFillCropFrameLayout extends VideoFillCropFrameLayout implements c {
    private a a;

    public AutoplayableVideoFillCropFrameLayout(Context context) {
        super(context);
    }

    public AutoplayableVideoFillCropFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AutoplayableVideoFillCropFrameLayout(Context context, AttributeSet attributeSet, bc bcVar) {
        super(context, attributeSet, bcVar);
    }

    public void setAutoplayableItem(a aVar) {
        this.a = aVar;
    }

    public a getAutoPlayableItem() {
        if (this.a != null) {
            return this.a;
        }
        return a.j;
    }
}
