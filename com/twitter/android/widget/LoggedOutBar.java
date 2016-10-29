package com.twitter.android.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

/* compiled from: Twttr */
public class LoggedOutBar extends LinearLayout {
    public LoggedOutBar(Context context) {
        super(context);
    }

    public LoggedOutBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LoggedOutBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        findViewById(2131952671).setOnClickListener(onClickListener);
        findViewById(2131952670).setOnClickListener(onClickListener);
    }

    public void setDefaultOnClickListener(Activity activity) {
        setOnClickListener(new by(this, activity));
    }
}
