package com.twitter.android.commerce.card;

import com.twitter.android.revenue.card.au;
import com.twitter.android.revenue.card.i;
import com.twitter.android.revenue.card.j;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class l implements i {
    public /* synthetic */ au b(j jVar, Tweet tweet) {
        return a(jVar, tweet);
    }

    public j a(j jVar, Tweet tweet) {
        return new j(jVar, CommerceCardActionHandler.a(jVar));
    }
}
