package com.twitter.android;

import android.content.Context;
import bbu;
import com.twitter.android.timeline.aw;
import com.twitter.library.api.timeline.v;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.timeline.aj;
import com.twitter.util.collection.MutableList;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.ar;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public class sl extends id {
    private final Set<Long> b;
    private final List<ScribeItem> c;
    private final az d;
    private final Context e;
    private final int f;
    private final TwitterScribeAssociation g;

    public sl(bg bgVar, az azVar, Context context, int i, TwitterScribeAssociation twitterScribeAssociation) {
        super(bgVar);
        this.b = MutableSet.a();
        this.c = MutableList.a();
        this.d = azVar;
        this.e = context.getApplicationContext();
        this.f = i;
        this.g = TwitterScribeAssociation.a(twitterScribeAssociation);
    }

    protected boolean a(long j) {
        boolean a = super.a(j);
        if (a) {
            this.b.add(Long.valueOf(j));
        }
        return a;
    }

    public void b(long j) {
        if (j != 0) {
            Session b = this.a.b(j);
            if (!this.b.isEmpty()) {
                this.d.a(new v(this.e, b, ar.a(this.b), this.f));
                this.b.clear();
            }
        }
    }

    public void c(long j) {
        if (!this.c.isEmpty()) {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(j).b(new String[]{this.g.a(), this.g.b(), "stream", null, "results"})).b(this.c));
            this.c.clear();
        }
    }

    public void a(aw awVar, int i) {
        if (!awVar.c().m && a(awVar.d())) {
            aj ajVar = awVar.o;
            TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
            twitterScribeItem.am = ajVar;
            twitterScribeItem.g = i;
            this.c.add(twitterScribeItem);
            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(this.a.c().g());
            String[] strArr = new String[5];
            strArr[0] = this.g.a();
            strArr[1] = this.g.b();
            strArr[2] = ajVar != null ? ajVar.e : null;
            strArr[3] = null;
            strArr[4] = "impression";
            bbu.a((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) twitterScribeLog.b(strArr)).a(twitterScribeItem)).a(this.g));
        }
    }
}
