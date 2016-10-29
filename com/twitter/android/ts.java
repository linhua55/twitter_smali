package com.twitter.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri.Builder;
import bbn;
import com.twitter.android.timeline.aw;
import com.twitter.android.timeline.ax;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.Tweet;
import com.twitter.model.timeline.aj;
import com.twitter.util.ab;

/* compiled from: Twttr */
public class ts {
    private final Context a;
    private boolean b;
    private long c;
    private String d;
    private TwitterScribeAssociation e;
    private Tweet f;
    private aw g;
    private boolean h;
    private long i;

    public ts(Context context) {
        this.i = -1;
        this.a = context;
    }

    public ts a(boolean z) {
        this.b = z;
        return this;
    }

    public ts a(long j) {
        this.c = j;
        return this;
    }

    public ts a(String str) {
        this.d = str;
        return this;
    }

    public ts a(TwitterScribeAssociation twitterScribeAssociation) {
        this.e = twitterScribeAssociation;
        return this;
    }

    public ts a(Tweet tweet) {
        this.f = tweet;
        return this;
    }

    public ts a(aw awVar) {
        this.g = awVar;
        return this;
    }

    public ts b(long j) {
        this.i = j;
        return this;
    }

    public Intent a() {
        Intent putExtra = new Intent(this.a, this.b ? RootTweetActivity.class : TweetActivity.class).putExtra("association", this.e).putExtra("tag", this.c).putExtra("focus_compose", this.h);
        if (this.f != null) {
            putExtra.putExtra("tw", this.f).putExtra("type", this.f.Q);
            if (this.f.ag != null) {
                ab.a(putExtra, "tw_scribe_content", this.f.ag, aj.a);
            }
        } else if (this.i > 0) {
            putExtra.setData(new Builder().scheme("twitter").authority("tweet").appendQueryParameter("status_id", String.valueOf(this.i)).build());
        } else {
            bbn.a(new IllegalStateException("Tried to create TweetActivity intent with no tweet specified"));
        }
        if (this.g instanceof ax) {
            ab.a(putExtra, "timeline_moment", ((ax) this.g).a.c, com.twitter.model.moments.ab.a);
        }
        return putExtra;
    }

    public void b() {
        this.a.startActivity(a());
    }
}
