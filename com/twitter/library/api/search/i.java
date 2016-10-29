package com.twitter.library.api.search;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cm;
import com.twitter.model.search.d;
import com.twitter.model.search.j;
import com.twitter.model.search.m;
import com.twitter.model.topic.TwitterTopic;
import java.util.List;

/* compiled from: Twttr */
public class i {
    public final int a;
    public final cm b;
    public final TwitterUser c;
    public final List<cm> d;
    public final j e;
    public final String[] f;
    public final List<TwitterUser> g;
    public final d h;
    public final m i;
    public final boolean j;
    public final List<TwitterTopic> k;
    public final boolean l;

    public i(int i, cm cmVar, TwitterUser twitterUser, List<cm> list, j jVar, String[] strArr, List<TwitterUser> list2, d dVar, m mVar, boolean z, List<TwitterTopic> list3, boolean z2) {
        this.a = i;
        this.b = cmVar;
        this.c = twitterUser;
        this.d = list;
        this.e = jVar;
        this.f = strArr;
        this.g = list2;
        this.h = dVar;
        this.j = z;
        this.k = list3;
        this.l = z2;
        this.i = mVar;
    }
}
