package com.twitter.android.highlights;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.twitter.library.provider.aq;
import com.twitter.library.util.q;
import com.twitter.library.view.d;
import com.twitter.library.view.m;
import com.twitter.library.view.o;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.model.core.i;
import defpackage.bcu;

/* compiled from: Twttr */
public class bo implements ar {
    private static boolean a;
    private static int b;
    private static int c;

    static {
        a = false;
    }

    public int a(int i) {
        return 2130968905;
    }

    public int b(int i) {
        return 2131362791;
    }

    public void a(at atVar, LayoutInflater layoutInflater, ak akVar) {
        ((bq) atVar).f.setOnClickListener(akVar);
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        bp bpVar = (bp) asVar;
        bq bqVar = (bq) atVar;
        bqVar.g.setText(bpVar.b.d());
        bqVar.h.setVisibility(bpVar.b.M ? 0 : 8);
        bqVar.i.setText(au.a(context, bpVar.b));
        bqVar.j.setText(q.a(context).a(bqVar.j, bpVar.a(context, akVar), bqVar.j.getPaint().getFontMetrics()));
        TwitterUser twitterUser = (TwitterUser) new cp().a(bpVar.b.s).f(bpVar.b.v).i(bpVar.b.m).b(bpVar.b.r).q();
        bqVar.f.a(twitterUser);
        bqVar.f.setTag(twitterUser);
        ao aoVar = new ao(context, bpVar.b, bqVar.y, bqVar.z, StoryScribeItem.a(bpVar), str, str2);
        bqVar.y.setTag(aoVar);
        bqVar.z.setTag(aoVar);
    }

    public static CharSequence a(Context context, Tweet tweet, boolean z, m mVar) {
        i a;
        if (!a) {
            Resources resources = context.getResources();
            b = resources.getColor(2131886264);
            c = resources.getColor(bcu.link_selected);
            a = true;
        }
        if (z) {
            a = aq.a(tweet).a(true).e(false).c(false).a();
        } else {
            a = new i(tweet.f(), tweet.w);
        }
        CharSequence a2 = o.a(a.a).a(a.b).a(mVar).a(b).b(c).a();
        if (d.a() && tweet.m()) {
            return d.a(context, tweet.w.f, a2, true);
        }
        return a2;
    }
}
