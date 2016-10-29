package com.twitter.android.people.adapters;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.people.aa;

/* compiled from: Twttr */
class g implements OnClickListener {
    final /* synthetic */ Context a;
    final /* synthetic */ aa b;
    final /* synthetic */ TwitterUser c;
    final /* synthetic */ f d;

    g(f fVar, Context context, aa aaVar, TwitterUser twitterUser) {
        this.d = fVar;
        this.a = context;
        this.b = aaVar;
        this.c = twitterUser;
    }

    public void onClick(View view) {
        OpenUriHelper.a(this.a, null, this.b.a.e.d, this.c.c, null, null, null, true);
    }
}
