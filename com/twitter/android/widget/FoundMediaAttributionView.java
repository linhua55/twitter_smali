package com.twitter.android.widget;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.model.media.foundmedia.FoundMediaProvider;

/* compiled from: Twttr */
public class FoundMediaAttributionView extends LinearLayout {
    private final TextView a;
    private final ImageView b;

    public FoundMediaAttributionView(Context context) {
        this(context, null, 0);
    }

    public FoundMediaAttributionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FoundMediaAttributionView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setOrientation(0);
        inflate(context, 2130968830, this);
        this.a = (TextView) findViewById(2131952485);
        this.b = (ImageView) findViewById(2131952484);
    }

    public void setProvider(FoundMediaProvider foundMediaProvider) {
        if (foundMediaProvider != null) {
            this.a.setText(foundMediaProvider.c);
            if ("giphy".equalsIgnoreCase(foundMediaProvider.b)) {
                this.b.setImageDrawable(getResources().getDrawable(2130839180));
                return;
            } else if ("riffsy".equalsIgnoreCase(foundMediaProvider.b)) {
                this.b.setImageDrawable(getResources().getDrawable(2130839181));
                return;
            } else {
                return;
            }
        }
        this.a.setText(BuildConfig.VERSION_NAME);
        this.b.setImageDrawable(null);
    }
}
