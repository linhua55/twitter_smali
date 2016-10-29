package com.twitter.android.timeline;

import com.twitter.model.core.Tweet;
import com.twitter.model.timeline.aj;
import java.util.List;

/* compiled from: Twttr */
public class bb extends aw {
    public final Tweet b;

    public bb(ar arVar, long j, Tweet tweet, aj ajVar) {
        super(arVar, j, ajVar);
        this.b = tweet;
    }

    public void a(List<Long> list, List<Long> list2, List<Long> list3) {
        list.add(Long.valueOf(this.b.H));
    }
}
