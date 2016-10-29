package com.twitter.library.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.twitter.library.widget.TightTextView;
import defpackage.bdc;
import defpackage.bdd;

/* compiled from: Twttr */
public class VideoDurationView extends TightTextView {
    private final int a;

    public VideoDurationView(Context context) {
        this(context, null, 0);
    }

    public VideoDurationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoDurationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.VideoDurationView, i, 0);
        this.a = obtainStyledAttributes.getInt(bdd.VideoDurationView_time_format, 1);
        obtainStyledAttributes.recycle();
    }

    public void setDuration(int i) {
        String string;
        int i2 = (i + 500) / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
        if (this.a == 2) {
            string = getResources().getString(bdc.video_duration, new Object[]{Integer.valueOf(Math.max(1, i2))});
        } else {
            string = String.format("%d:%02d", new Object[]{Integer.valueOf(i2 / 60), Integer.valueOf(i2 % 60)});
        }
        setText(string);
    }
}
