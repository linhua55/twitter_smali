package com.twitter.android.revenue.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import com.twitter.android.mx;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.config.d;

/* compiled from: Twttr */
public class CardMediaView extends RelativeLayout {
    private MediaImageView a;
    private boolean b;

    public CardMediaView(Context context) {
        super(context);
        a(context, null);
    }

    public CardMediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public CardMediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.CardMediaView, 0, 0);
        float dimension = obtainStyledAttributes.getDimension(2, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(3, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(1, 0.0f);
        float dimension4 = obtainStyledAttributes.getDimension(0, 0.0f);
        this.b = obtainStyledAttributes.getBoolean(4, false);
        inflate(getContext(), 2130969071, this);
        this.a = (MediaImageView) findViewById(2131952122);
        a(dimension, dimension2, dimension3, dimension4);
        a(this.b);
        obtainStyledAttributes.recycle();
    }

    public void a(float f, float f2, float f3, float f4) {
        this.a.setRoundingStrategy(d.a(f, f2, f3, f4));
    }

    public MediaImageView getMediaImageView() {
        return this.a;
    }

    private void a(boolean z) {
        View findViewById = findViewById(2131952840);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 8 : 0);
        }
    }
}
