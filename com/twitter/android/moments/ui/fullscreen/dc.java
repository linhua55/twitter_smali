package com.twitter.android.moments.ui.fullscreen;

import com.twitter.app.common.base.u;
import com.twitter.model.moments.viewmodels.MomentPage;

/* compiled from: Twttr */
public class dc extends u<dc> {
    public final MomentPage a;

    public dc(long j, MomentPage momentPage) {
        this.a = momentPage;
        this.b.putExtra("moment_id", j).putExtra("page_id", momentPage.h());
        d(true);
    }
}
