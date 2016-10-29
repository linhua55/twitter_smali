package com.twitter.android.moments.viewmodels;

import com.twitter.android.moments.viewmodels.MomentGuideListItem.Type;

/* compiled from: Twttr */
public class n extends MomentGuideListItem {
    private final String a;

    public n(String str) {
        super(Type.HEADER);
        this.a = str;
    }

    public String a() {
        return this.a;
    }
}
