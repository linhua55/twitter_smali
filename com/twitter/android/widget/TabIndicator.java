package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TextView;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class TabIndicator extends RelativeLayout {
    private ImageView a;
    private ImageView b;
    private TextView c;
    private boolean d;
    private int e;

    public TabIndicator(Context context) {
        super(context);
        this.e = 0;
    }

    public TabIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = 0;
    }

    public TabIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = 0;
    }

    public static TabIndicator a(LayoutInflater layoutInflater, int i, TabHost tabHost, int i2, int i3) {
        TabIndicator tabIndicator = (TabIndicator) layoutInflater.inflate(i, tabHost.getTabWidget(), false);
        tabIndicator.setIconResource(i2);
        if (i3 > 0) {
            tabIndicator.setTitle(i3);
        }
        return tabIndicator;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = (ImageView) findViewById(k.icon);
        this.a = (ImageView) findViewById(2131951686);
        this.c = (TextView) findViewById(k.title);
        if (this.c != null && this.c.getTypeface() != null) {
            this.e = this.c.getTypeface().getStyle();
        }
    }

    public void setNew(boolean z) {
        if (z != this.d) {
            if (z) {
                this.a.setVisibility(0);
            } else {
                this.a.setVisibility(8);
            }
            this.d = z;
        }
    }

    public void setIconResource(int i) {
        if (this.b != null) {
            this.b.setImageResource(i);
        }
    }

    public void setTitle(int i) {
        if (this.b != null) {
            this.b.setContentDescription(getResources().getString(i));
        }
        if (this.c != null) {
            this.c.setText(i);
        }
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.b != null) {
            this.b.setImageState(getDrawableState(), true);
        }
    }

    public void setTitleBold(boolean z) {
        if (this.c != null) {
            this.c.setTypeface(this.c.getTypeface(), z ? 1 : this.e);
        }
    }
}
