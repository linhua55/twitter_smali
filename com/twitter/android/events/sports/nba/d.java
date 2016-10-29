package com.twitter.android.events.sports.nba;

import com.twitter.android.widget.TopicView$TopicData;
import com.twitter.model.topic.a;
import com.twitter.model.topic.g;
import com.twitter.util.aj;
import com.twitter.util.serialization.m;
import java.util.List;

/* compiled from: Twttr */
public class d implements c {
    private final a a;

    public d(a aVar) {
        this.a = aVar;
    }

    public void a(TopicView$TopicData topicView$TopicData) {
        g gVar = (g) m.a(topicView$TopicData.m, com.twitter.model.topic.d.a);
        if (gVar == null || gVar.f == null || gVar.h == null) {
            this.a.a();
            return;
        }
        this.a.b();
        List list = gVar.h;
        if (list == null || list.get(0) == null || list.get(1) == null) {
            this.a.a();
            return;
        }
        a aVar;
        a aVar2;
        if (((a) list.get(0)).g.equals("AWAY")) {
            aVar = (a) list.get(0);
            aVar2 = (a) list.get(1);
        } else {
            aVar = (a) list.get(1);
            aVar2 = (a) list.get(0);
        }
        this.a.a(aVar, aVar2);
        if ("IN_PROGRESS".equals(gVar.f) || "COMPLETED".equals(gVar.f)) {
            if (aVar.d == null || aVar2.d == null) {
                this.a.a();
                return;
            }
            this.a.a(aj.a(aVar.d) ? "-" : aVar.d, aj.a(aVar2.d) ? "-" : aVar2.d);
        }
        if (aj.a(gVar.e)) {
            this.a.setGameStatusDate(topicView$TopicData.l);
        } else {
            this.a.setGameStatusText(gVar.e);
        }
    }
}
