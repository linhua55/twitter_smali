package com.twitter.android;

import android.os.Bundle;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;

/* compiled from: Twttr */
public class EmailExploreSearchResultsFragment extends LandingPageSearchResultsFragment {
    private String ab;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.ab = t().f("scribe_section");
        a((TwitterScribeAssociation) ((TwitterScribeAssociation) ((TwitterScribeAssociation) new TwitterScribeAssociation().b(this.B)).c(this.ab)).d(this.a));
    }

    protected void m() {
        bbu.a(new TwitterScribeLog(aT().g()).b(this.B, this.ab, this.a, null, "show_polled_content"));
        super.m();
    }

    public void n() {
        super.n();
        if (this.o > 0) {
            a(ScribeLog.a(this.B, this.ab, "new_tweet_prompt", null, "click"));
        }
    }
}
