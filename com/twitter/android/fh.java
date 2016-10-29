package com.twitter.android;

import android.net.Uri;
import bbu;
import com.twitter.library.client.at;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
class fh extends kx {
    final /* synthetic */ EmailExploreActivity a;

    fh(EmailExploreActivity emailExploreActivity, Uri uri, km kmVar) {
        this.a = emailExploreActivity;
        super(uri, kmVar);
    }

    public void a(int i) {
        this.a.a(false);
        super.a(i);
    }

    public void a() {
        this.a.a(false);
        super.a();
    }

    protected void a(at atVar) {
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(EmailExploreActivity.c(this.a).g()).b(new String[]{"explore_email", "category", atVar.e, null, "polled_content_available"})).f(EmailExploreActivity.b(this.a)));
    }
}
