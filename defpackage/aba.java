package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.view.View;
import android.widget.ListView;
import com.twitter.android.vt;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.m;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: aba */
class aba {
    private final List<TwitterScribeItem> a;
    private final Map<Long, abb> b;
    private final TwitterScribeAssociation c;
    private final Context d;
    private final long e;
    private final long f;
    private ListView g;

    aba(TwitterScribeAssociation twitterScribeAssociation, Context context, long j, long j2) {
        this.a = MutableList.a();
        this.b = MutableMap.a();
        this.c = twitterScribeAssociation;
        this.d = context;
        this.e = j;
        this.f = j2;
    }

    public void a(ListView listView) {
        this.g = listView;
    }

    public void a(View view, Tweet tweet) {
        long j = tweet.P;
        abb abb = (abb) this.b.get(Long.valueOf(j));
        if (abb == null) {
            abb = new abb(this, view, tweet);
            this.b.put(Long.valueOf(j), abb);
        } else {
            abb.a(view);
        }
        abb.a(m.b(), false);
    }

    public List<TwitterScribeItem> a(long j, boolean z) {
        for (abb a : this.b.values()) {
            a.a(j, z);
        }
        return this.a;
    }

    @VisibleForTesting
    Tweet a(View view) {
        vt vtVar = (vt) view.getTag();
        return vtVar != null ? vtVar.d.getTweet() : null;
    }
}
