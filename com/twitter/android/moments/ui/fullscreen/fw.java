package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.net.Uri.Builder;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.TweetActivity;
import com.twitter.app.common.base.u;
import com.twitter.model.core.as;

/* compiled from: Twttr */
class fw implements OnClickListener {
    final /* synthetic */ as a;
    final /* synthetic */ Context b;
    final /* synthetic */ fv c;

    fw(fv fvVar, as asVar, Context context) {
        this.c = fvVar;
        this.a = asVar;
        this.b = context;
    }

    public void onClick(View view) {
        this.b.startActivity(new u().d(true).a(this.b, TweetActivity.class).setData(new Builder().scheme("twitter").authority("tweet").appendQueryParameter("status_id", String.valueOf(this.a.e)).build()));
    }
}
