package com.twitter.library.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class as implements OnClickListener {
    final /* synthetic */ TimelineMessageView a;

    as(TimelineMessageView timelineMessageView) {
        this.a = timelineMessageView;
    }

    public void onClick(View view) {
        if (this.a.g != null) {
            this.a.g.a(this.a);
        }
    }
}
