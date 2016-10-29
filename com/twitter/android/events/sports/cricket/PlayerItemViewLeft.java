package com.twitter.android.events.sports.cricket;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.topic.a;

/* compiled from: Twttr */
public class PlayerItemViewLeft extends LinearLayout {
    protected final TextView a;
    protected final TextView b;
    protected final MediaImageView c;
    private final Context d;
    private final View e;

    public PlayerItemViewLeft(Context context) {
        this(context, null, 0);
    }

    public PlayerItemViewLeft(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerItemViewLeft(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.d = context;
        this.e = LayoutInflater.from(this.d).inflate(2130968725, this, true);
        this.a = (TextView) this.e.findViewById(2131952276);
        this.c = (MediaImageView) this.e.findViewById(2131951847);
        this.b = (TextView) this.e.findViewById(2131952275);
    }

    public void a(a aVar) {
        b.a((View) this, this.d, aVar, this.a, this.b, this.c);
    }
}
