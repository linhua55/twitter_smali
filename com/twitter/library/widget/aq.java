package com.twitter.library.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.timeline.o;

/* compiled from: Twttr */
class aq implements OnClickListener {
    final /* synthetic */ TimelineMessageView a;

    aq(TimelineMessageView timelineMessageView) {
        this.a = timelineMessageView;
    }

    public void onClick(View view) {
        if (this.a.g != null) {
            o oVar = (o) view.getTag();
            if (oVar != null) {
                this.a.g.a(this.a, oVar);
            }
        }
    }
}
