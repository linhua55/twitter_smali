package com.twitter.android.events.sports.cricket;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import com.twitter.android.widget.TopicView$TopicData;
import com.twitter.model.topic.a;
import com.twitter.model.topic.d;
import com.twitter.model.topic.g;
import com.twitter.util.serialization.m;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class CricketPlayerCardView extends LinearLayout {
    private final Context a;
    private final PlayerItemViewLeft b;
    private final PlayerItemViewLeft c;
    private final PlayerItemViewRight d;
    private final PlayerItemViewRight e;

    public CricketPlayerCardView(Context context) {
        this(context, null, 0);
    }

    public CricketPlayerCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CricketPlayerCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = context;
        LayoutInflater.from(this.a).inflate(2130968724, this, true);
        this.b = (PlayerItemViewLeft) findViewById(2131952271);
        this.c = (PlayerItemViewLeft) findViewById(2131952273);
        this.d = (PlayerItemViewRight) findViewById(2131952272);
        this.e = (PlayerItemViewRight) findViewById(2131952274);
    }

    private void a() {
        this.b.setVisibility(8);
        this.b.setOnClickListener(null);
        this.c.setVisibility(8);
        this.c.setOnClickListener(null);
        this.d.setVisibility(8);
        this.d.setOnClickListener(null);
        this.e.setVisibility(8);
        this.e.setOnClickListener(null);
    }

    public void a(TopicView$TopicData topicView$TopicData) {
        String str = null;
        a();
        g gVar = (g) m.a(topicView$TopicData.m, d.a);
        if (gVar == null) {
            setVisibility(8);
            return;
        }
        List<a> list = gVar.i;
        String trim = gVar.f.trim();
        if ("COMPLETED".equals(trim) || "SCHEDULED".equals(trim) || list == null || list.isEmpty()) {
            setVisibility(8);
            return;
        }
        Object obj;
        setVisibility(0);
        List list2 = gVar.h;
        if (list2 == null || list2.isEmpty()) {
            obj = null;
        } else {
            if (list2.get(0) != null) {
                obj = ((a) list2.get(0)).g;
            } else {
                obj = null;
            }
            if (list2.get(1) != null) {
                str = ((a) list2.get(1)).g;
            }
        }
        list2 = new ArrayList();
        List arrayList = new ArrayList();
        for (a aVar : list) {
            if (aVar.g.equals(obj)) {
                list2.add(aVar);
            } else {
                arrayList.add(aVar);
            }
        }
        if (obj != null) {
            a(list2, true);
        }
        if (str != null) {
            a(arrayList, false);
        }
        if (list2.size() > 0 && arrayList.size() == 0) {
            this.d.setVisibility(0);
            b.a(this.a, ((a) list2.get(0)).d, this.d.c, this.d.b, this.d.a, false);
        } else if (list2.size() == 0 && arrayList.size() > 0) {
            this.b.setVisibility(0);
            b.a(this.a, ((a) arrayList.get(0)).d, this.b.c, this.b.b, this.b.a, false);
        }
    }

    private void a(List<a> list, boolean z) {
        if (list != null && list.size() > 0) {
            if (z) {
                this.b.a((a) list.get(0));
                if (list.size() == 2) {
                    this.c.a((a) list.get(1));
                    return;
                }
                return;
            }
            this.d.a((a) list.get(0));
            if (list.size() == 2) {
                this.e.a((a) list.get(1));
            }
        }
    }
}
