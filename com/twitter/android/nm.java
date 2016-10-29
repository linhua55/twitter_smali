package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class nm implements OnClickListener {
    final /* synthetic */ ReportFlowWebViewActivity a;

    nm(ReportFlowWebViewActivity reportFlowWebViewActivity) {
        this.a = reportFlowWebViewActivity;
    }

    public void onClick(View view) {
        this.a.finish();
    }
}
