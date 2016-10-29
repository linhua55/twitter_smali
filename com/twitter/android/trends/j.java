package com.twitter.android.trends;

import android.os.Bundle;
import android.view.View;
import cni;
import com.twitter.android.kr;
import com.twitter.android.rn;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.scribe.TwitterScribeItem;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* compiled from: Twttr */
class j implements kr<View, cni> {
    private final HashSet<Long> a;
    private final HashSet<String> b;
    private final List<Long> c;
    private final List<TwitterScribeItem> d;
    private final TrendsPlusFragment e;

    j(TrendsPlusFragment trendsPlusFragment) {
        this.a = new HashSet();
        this.b = new HashSet();
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.e = trendsPlusFragment;
    }

    List<Long> a() {
        return Collections.unmodifiableList(this.c);
    }

    List<TwitterScribeItem> b() {
        return Collections.unmodifiableList(this.d);
    }

    void c() {
        this.d.clear();
    }

    void d() {
        this.b.clear();
    }

    void a(Bundle bundle) {
        if (bundle != null) {
            HashSet hashSet = (HashSet) bundle.getSerializable("logged_promoted_trend_ids");
            if (hashSet != null) {
                this.a.addAll(hashSet);
            }
            hashSet = (HashSet) bundle.getSerializable("viewed_trend_ids");
            if (hashSet != null) {
                this.b.addAll(hashSet);
            }
        }
    }

    void b(Bundle bundle) {
        bundle.putSerializable("logged_promoted_trend_ids", this.a);
        bundle.putSerializable("viewed_trend_ids", this.b);
    }

    public void a(View view, cni cni, Bundle bundle) {
        rn rnVar = (rn) view.getTag();
        int i = rnVar.o;
        String str = rnVar.s;
        if (i == 5 && str != null && this.b.add(str)) {
            long j = bundle.getLong("entity_id", -1);
            if (j != -1) {
                this.c.add(Long.valueOf(j));
            }
            int i2 = bundle.getInt("position", -1);
            TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
            twitterScribeItem.b = bundle.getString("name");
            twitterScribeItem.c = 8;
            twitterScribeItem.g = i2;
            twitterScribeItem.v = bundle.getString("description");
            if (cni != null) {
                twitterScribeItem.e = String.valueOf(cni.e);
            }
            this.d.add(twitterScribeItem);
            if (!(bundle.getBoolean("isread", true) || bundle.getInt("changes", 0) == 0 || i2 < 0)) {
                this.e.a(view);
            }
        }
        if (cni != null && this.a.add(Long.valueOf(cni.e))) {
            this.e.a(PromotedEvent.a, cni.e);
        }
    }
}
