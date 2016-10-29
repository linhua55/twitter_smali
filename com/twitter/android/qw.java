package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class qw implements OnClickListener {
    private final Context a;
    private Tweet b;

    public qw(Context context, Tweet tweet) {
        this.a = context;
        this.b = tweet;
    }

    public void a(Tweet tweet) {
        this.b = tweet;
    }

    public void onClick(View view) {
        Tweet tweet = this.b;
        if (tweet != null && tweet.c) {
            this.a.startActivity(new Intent(this.a, ProfileActivity.class).putExtra("user_id", tweet.b).putExtra("screen_name", tweet.p));
        }
    }
}
