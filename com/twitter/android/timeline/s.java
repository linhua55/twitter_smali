package com.twitter.android.timeline;

import android.os.Parcelable;
import bbu;
import com.twitter.app.common.inject.n;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.collection.MutableSet;
import com.twitter.util.collection.ar;
import java.util.Set;

/* compiled from: Twttr */
public class s implements n<FooterImpressionState> {
    private final bg a;
    private final TwitterScribeAssociation b;
    private final Set<Long> c;

    public /* synthetic */ Parcelable c() {
        return b();
    }

    public s(bg bgVar, TwitterScribeAssociation twitterScribeAssociation, FooterImpressionState footerImpressionState) {
        this.c = MutableSet.a();
        this.a = bgVar;
        this.b = twitterScribeAssociation;
        this.c.addAll(ar.a(footerImpressionState != null ? footerImpressionState.a : null));
    }

    public void a(t tVar, int i) {
        String str = null;
        if (this.c.add(Long.valueOf(tVar.d()))) {
            String b;
            String a = this.b != null ? this.b.a() : null;
            if (this.b != null) {
                b = this.b.b();
            } else {
                b = null;
            }
            if (tVar.o != null) {
                str = tVar.o.e;
            }
            TwitterScribeItem twitterScribeItem = new TwitterScribeItem();
            twitterScribeItem.am = tVar.o;
            twitterScribeItem.g = i;
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.a.c().g()).b(new String[]{a, b, str, "footer", "impression"})).a(twitterScribeItem));
        }
    }

    public String aF_() {
        return "footer_impression_helper_id";
    }

    public FooterImpressionState b() {
        return new FooterImpressionState(this.c);
    }
}
