package com.twitter.android.smartfollow.finishingtimeline;

import android.content.Context;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.widget.TextView;
import com.twitter.android.smartfollow.BaseSmartFollowScreen;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class FinishingTimelineScreen extends BaseSmartFollowScreen<a> {
    private TextView b;

    public FinishingTimelineScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.b = (TextView) e.a(findViewById(2131953288));
    }

    protected void setDescription(@StringRes int i) {
        a(getResources(), this.b, i);
    }
}
