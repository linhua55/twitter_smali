package com.twitter.model.timeline;

import cni;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class cc extends av implements ax, ay {
    public final TwitterTopic a;

    private cc(ce ceVar, int i) {
        super(ceVar, i);
        this.a = ceVar.a;
    }

    public List<TwitterTopic> a() {
        return n.b(this.a);
    }

    public cni d() {
        return this.a.q();
    }
}
