package com.twitter.android.moments.viewmodels;

import com.twitter.android.moments.viewmodels.MomentGuideListItem.Type;

/* compiled from: Twttr */
public class t extends MomentGuideListItem {
    private final String a;
    private final String c;
    private final String d;
    private final String e;

    public t(String str, String str2, String str3, String str4) {
        super(Type.PIVOT);
        this.a = str;
        this.c = str2;
        this.d = str3;
        this.e = str4;
    }

    public String a() {
        return this.a;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return this.d;
    }
}
