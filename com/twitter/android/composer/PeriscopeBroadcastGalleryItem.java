package com.twitter.android.composer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.twitter.media.ui.image.AspectRatioFrameLayout;

/* compiled from: Twttr */
public class PeriscopeBroadcastGalleryItem extends AspectRatioFrameLayout {
    private final View a;
    private final View b;

    public PeriscopeBroadcastGalleryItem(Context context) {
        this(context, null, 0);
    }

    public PeriscopeBroadcastGalleryItem(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PeriscopeBroadcastGalleryItem(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        inflate(getContext(), 2130968842, this);
        setAspectRatio(1.0f);
        this.a = findViewById(2131952508);
        this.b = findViewById(2131952509);
    }

    public void a() {
        setEnabled(false);
        this.a.setVisibility(0);
    }

    public void b() {
        setEnabled(true);
        this.a.setVisibility(8);
    }

    public void c() {
        this.b.setVisibility(0);
    }

    public void d() {
        this.b.setVisibility(8);
    }
}
