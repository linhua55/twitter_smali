package com.twitter.android.media.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import com.google.android.exoplayer.C;
import com.twitter.android.composer.ComposerType;
import com.twitter.android.media.selection.MediaAttachment;
import com.twitter.android.mx;
import com.twitter.android.util.v;
import com.twitter.android.widget.FoundMediaAttributionView;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.foundmedia.FoundMediaProvider;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class InlineComposerMediaLayout extends FrameLayout {
    private InlineComposerMediaScrollView a;
    private View b;
    private FoundMediaAttributionView c;
    private float d;
    private final int e;

    public InlineComposerMediaLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public InlineComposerMediaLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.InlineComposerMediaLayout, i, 0);
        try {
            this.e = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.a = (InlineComposerMediaScrollView) findViewById(2131952721);
        this.b = this.a.getChildAt(0);
        this.c = (FoundMediaAttributionView) findViewById(2131952232);
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        if (this.e == -1) {
            super.onMeasure(i, i2);
        } else {
            i3 = (int) (((float) this.e) * this.d);
            if (i3 < MeasureSpec.getSize(i)) {
                i = MeasureSpec.makeMeasureSpec(i3, MeasureSpec.getMode(i));
            }
            super.onMeasure(i, i2);
        }
        if (this.c.getVisibility() != 8) {
            int measuredWidth = getMeasuredWidth();
            i3 = this.b.getMeasuredHeight();
            int measuredHeight = this.c.getMeasuredHeight();
            int i4 = i3 + measuredHeight;
            if (MeasureSpec.getMode(i2) == 0 || i4 <= MeasureSpec.getSize(i2) || i4 <= getMeasuredHeight()) {
                this.a.measure(MeasureSpec.makeMeasureSpec(measuredWidth, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT));
                setMeasuredDimension(measuredWidth, i4);
                return;
            }
            this.a.measure(MeasureSpec.makeMeasureSpec(measuredWidth, C.ENCODING_PCM_32BIT), MeasureSpec.makeMeasureSpec(getMeasuredHeight() - measuredHeight, C.ENCODING_PCM_32BIT));
        }
    }

    public AttachmentMediaView a(MediaAttachment mediaAttachment, ComposerType composerType) {
        if (mediaAttachment == null || !mediaAttachment.b(3)) {
            AttachmentMediaView a = this.a.a(null);
            this.a.setVisibility(8);
            this.c.setVisibility(8);
            return a;
        }
        this.a.setVisibility(0);
        EditableMedia editableMedia = (EditableMedia) e.a(mediaAttachment.a(3));
        this.d = editableMedia.bm_();
        AttachmentMediaView a2 = this.a.a(mediaAttachment);
        if (v.a(composerType)) {
            this.c.setVisibility(8);
        } else {
            FoundMediaProvider c = editableMedia.h().c();
            this.c.setProvider(c);
            this.c.setVisibility(c != null ? 0 : 8);
        }
        return a2;
    }
}
