package com.twitter.android.profiles;

import android.view.View;
import bbu;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.ui.view.a;

/* compiled from: Twttr */
class aa extends a {
    final /* synthetic */ ProfileDetailsViewManager a;

    aa(ProfileDetailsViewManager profileDetailsViewManager, int i) {
        this.a = profileDetailsViewManager;
        super(i);
    }

    public void onClick(View view) {
        if (ProfileDetailsViewManager.a(this.a) != null) {
            long g = bg.a().c().g();
            String a = as.a(g == ProfileDetailsViewManager.b(this.a).e());
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b(new String[]{a, "profile::place_tag:click"})).d(ProfileDetailsViewManager.c(this.a).b));
            ProfileDetailsViewManager.a(this.a).a(ProfileDetailsViewManager.c(this.a));
        }
    }
}
