package com.twitter.android.people.adapters;

import android.content.Context;
import android.content.Intent;
import android.net.Uri.Builder;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.TweetActivity;
import com.twitter.model.core.as;

/* compiled from: Twttr */
class ar implements OnClickListener {
    final /* synthetic */ as a;
    final /* synthetic */ Context b;
    final /* synthetic */ aq c;

    ar(aq aqVar, as asVar, Context context) {
        this.c = aqVar;
        this.a = asVar;
        this.b = context;
    }

    public void onClick(View view) {
        this.b.startActivity(new Intent(this.b, TweetActivity.class).setData(new Builder().scheme("twitter").authority("tweet").appendQueryParameter("status_id", String.valueOf(this.a.e)).build()));
    }
}
