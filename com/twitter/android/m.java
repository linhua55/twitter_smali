package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import bbu;
import boh;
import bok;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.widget.ActionButton;

/* compiled from: Twttr */
class m implements OnClickListener {
    final /* synthetic */ TwitterScribeAssociation a;
    final /* synthetic */ ActivityFragment b;

    m(ActivityFragment activityFragment, TwitterScribeAssociation twitterScribeAssociation) {
        this.b = activityFragment;
        this.a = twitterScribeAssociation;
    }

    public void onClick(View view) {
        jm jmVar = (jm) view.getTag();
        ActionButton actionButton = (ActionButton) view;
        if (actionButton.isChecked()) {
            actionButton.setChecked(false);
            ActivityFragment.c(this.b).c(jmVar.a.c);
            ActivityFragment.e(this.b).a(new bok(this.b.getActivity(), ActivityFragment.d(this.b), jmVar.a.c, jmVar.a.B));
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(ActivityFragment.f(this.b).g()).b(jmVar.a.c, jmVar.a.B, jmVar.a.h()).b(new String[]{TwitterScribeLog.a(this.a, TtmlNode.ANONYMOUS_REGION_ID, "user", "unfollow")})).a(this.a));
            return;
        }
        actionButton.setChecked(true);
        ActivityFragment.c(this.b).b(jmVar.a.c, ((ActivityFragment.c(this.b).a(jmVar.a.c) ? ActivityFragment.c(this.b).j(jmVar.a.c).intValue() : 0) | 1) | 64);
        ActivityFragment.h(this.b).a(new boh(this.b.getActivity(), ActivityFragment.g(this.b), jmVar.a.c, jmVar.a.B));
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(ActivityFragment.i(this.b).g()).b(jmVar.a.c, jmVar.a.B, jmVar.a.h()).b(new String[]{TwitterScribeLog.a(this.a, TtmlNode.ANONYMOUS_REGION_ID, "user", "follow")})).b(new String[]{TwitterScribeLog.a(this.a, TtmlNode.ANONYMOUS_REGION_ID, "user", "follow")})).a(this.a));
    }
}
