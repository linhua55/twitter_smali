package com.twitter.android.highlights;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.util.al;

/* compiled from: Twttr */
public class bl implements ar {
    public int a(int i) {
        return 2130968908;
    }

    public int b(int i) {
        return 2131362785;
    }

    public void a(at atVar, LayoutInflater layoutInflater, ak akVar) {
        bn bnVar = (bn) atVar;
        bnVar.D.setTag(bnVar);
        bnVar.D.setObservableScrollViewListener(akVar);
        bnVar.a.setOnClickListener(akVar);
        bnVar.j.setOnClickListener(akVar);
        bnVar.g.setOnMediaClickListener(akVar);
        au.a(true, true, bnVar.h, akVar);
        au.a(true, true, bnVar.i, akVar);
        bnVar.H.setOnMediaClickListener(akVar);
        au.a(true, true, bnVar.p, akVar);
        au.a(true, true, bnVar.G, akVar);
    }

    public void a(as asVar, at atVar, Context context, ak akVar, String str, String str2, boolean z) {
        Resources resources = context.getResources();
        bm bmVar = (bm) asVar;
        bn bnVar = (bn) atVar;
        bnVar.b.setText(bmVar.a.d());
        bnVar.c.setText(resources.getString(2131364279, new Object[]{bmVar.a.v}));
        bnVar.e.setText(bmVar.a(context, akVar));
        bnVar.d.setText(al.a(context.getResources(), bmVar.a.q));
        TwitterUser twitterUser = (TwitterUser) new cp().a(bmVar.a.s).f(bmVar.a.v).i(bmVar.a.m).b(bmVar.a.r).q();
        bnVar.a.a(twitterUser);
        bnVar.a.setTag(twitterUser);
        bi.a(bnVar.g, bnVar.f, bmVar.a);
        ao aoVar = new ao(context, bmVar.a, bnVar.h, bnVar.i, StoryScribeItem.a(bmVar), str, str2);
        bnVar.h.setTag(aoVar);
        bnVar.i.setTag(aoVar);
        bnVar.k.setText(bmVar.b.d());
        bnVar.l.setText(resources.getString(2131364279, new Object[]{bmVar.b.v}));
        bnVar.n.setText(bmVar.b(context, akVar));
        bnVar.m.setText(al.a(context.getResources(), bmVar.b.q));
        twitterUser = (TwitterUser) new cp().a(bmVar.b.s).f(bmVar.b.v).i(bmVar.b.m).b(bmVar.b.r).q();
        bnVar.j.a(twitterUser);
        bnVar.j.setTag(twitterUser);
        bi.a(bnVar.H, bnVar.o, bmVar.b);
        aoVar = new ao(context, bmVar.b, bnVar.p, bnVar.G, StoryScribeItem.a(bmVar), str, str2);
        bnVar.p.setTag(aoVar);
        bnVar.G.setTag(aoVar);
    }
}
