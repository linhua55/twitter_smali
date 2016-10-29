package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import bbu;
import com.twitter.android.composer.aw;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
class jj implements OnClickListener {
    final /* synthetic */ ji a;

    jj(ji jiVar) {
        this.a = jiVar;
    }

    public void onClick(View view) {
        jl jlVar = (jl) view.getTag();
        Tweet tweet = jlVar.d;
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.a.m.c().g()).b(new String[]{TwitterScribeLog.a(this.a.j, "joined_twitter", "composebox", "click")})).a(this.a.j));
        if (tweet != null) {
            this.a.i().startActivity(aw.a().a(tweet).b(this.a.m.c().e()).a(this.a.i()));
            return;
        }
        this.a.i().startActivity(aw.a().a(("@" + jlVar.e.k) + " ", null).a(this.a.i()));
    }
}
