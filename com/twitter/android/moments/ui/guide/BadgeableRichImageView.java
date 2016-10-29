package com.twitter.android.moments.ui.guide;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.android.moments.ui.a;
import com.twitter.media.ui.image.RichImageView;

/* compiled from: Twttr */
public abstract class BadgeableRichImageView extends RichImageView implements a {
    protected final a a;
    protected boolean b;

    public BadgeableRichImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = new a(getResources());
    }

    public void setIsBadged(boolean z) {
        if (this.b != z) {
            this.b = z;
            invalidate();
        }
    }
}
