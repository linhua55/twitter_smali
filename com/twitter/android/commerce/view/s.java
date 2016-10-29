package com.twitter.android.commerce.view;

import android.content.Intent;
import android.net.Uri.Builder;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.TweetActivity;
import com.twitter.library.commerce.model.r;

/* compiled from: Twttr */
class s implements OnClickListener {
    final /* synthetic */ r a;
    final /* synthetic */ OrderHistoryDetailsActivity b;

    s(OrderHistoryDetailsActivity orderHistoryDetailsActivity, r rVar) {
        this.b = orderHistoryDetailsActivity;
        this.a = rVar;
    }

    public void onClick(View view) {
        this.b.startActivity(new Intent(this.b, TweetActivity.class).setData(new Builder().scheme("twitter").authority("tweet").appendQueryParameter("status_id", this.a.m().toString()).build()));
    }
}
