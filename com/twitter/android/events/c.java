package com.twitter.android.events;

import cni;
import com.twitter.android.timeline.ar;
import com.twitter.android.timeline.j;
import com.twitter.android.widget.TopicView.TopicData;
import com.twitter.model.timeline.aj;
import com.twitter.model.topic.l;

/* compiled from: Twttr */
public class c extends j {
    public final String a;
    public final String b;
    public final l c;
    public final int d;
    public final TopicData e;
    public final cni f;
    public final int g;

    public c(ar arVar, long j, aj ajVar, String str, String str2, l lVar, int i, TopicData topicData, cni cni, int i2) {
        super(arVar, j, ajVar);
        this.a = str;
        this.b = str2;
        this.c = lVar;
        this.d = i;
        this.e = topicData;
        this.f = cni;
        this.g = i2;
    }
}
