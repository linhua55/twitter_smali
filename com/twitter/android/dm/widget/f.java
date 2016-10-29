package com.twitter.android.dm.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.util.collection.CollectionUtils;
import java.util.Set;

/* compiled from: Twttr */
class f implements OnClickListener {
    final /* synthetic */ Set a;
    final /* synthetic */ long b;
    final /* synthetic */ SentMessageBylineView c;

    f(SentMessageBylineView sentMessageBylineView, Set set, long j) {
        this.c = sentMessageBylineView;
        this.a = set;
        this.b = j;
    }

    public void onClick(View view) {
        if (!CollectionUtils.b(this.a)) {
            this.c.a(this.b);
        }
    }
}
