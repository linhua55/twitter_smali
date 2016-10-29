package com.twitter.internal.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TabHost;

/* compiled from: Twttr */
public class IconTabHost extends TabHost {
    private z a;

    public IconTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setOnTabClickedListener(z zVar) {
        this.a = zVar;
    }

    public void dispatchWindowFocusChanged(boolean z) {
        if (getCurrentView() != null) {
            super.dispatchWindowFocusChanged(z);
        }
    }

    public void setCurrentTab(int i) {
        if (i != getCurrentTab()) {
            super.setCurrentTab(i);
        } else if (this.a != null) {
            this.a.l();
        }
    }

    public void onTouchModeChanged(boolean z) {
    }
}
