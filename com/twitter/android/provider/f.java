package com.twitter.android.provider;

import com.twitter.library.api.search.TwitterTypeAhead;
import com.twitter.model.core.p;
import defpackage.biw;
import defpackage.cuj;

/* compiled from: Twttr */
public class f implements cuj<TwitterTypeAhead> {
    public boolean a(TwitterTypeAhead twitterTypeAhead) {
        return twitterTypeAhead != null && twitterTypeAhead.e != null && p.g(twitterTypeAhead.e.S) && biw.a(twitterTypeAhead.e);
    }
}
