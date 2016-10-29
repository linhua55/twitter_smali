package com.twitter.android.businessprofiles;

import android.os.Bundle;
import bbu;
import com.twitter.android.profiles.as;
import com.twitter.android.widget.ScrollingHeaderTimelineFragment;
import com.twitter.app.common.list.h;
import com.twitter.app.common.list.t;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.ui.view.u;

/* compiled from: Twttr */
public class BusinessProfileTimelineFragment extends ScrollingHeaderTimelineFragment {
    private boolean m;
    private long n;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        h C = C();
        this.m = C.a("is_me", false);
        this.n = C.c("owner_id");
        if (this.m) {
            a(new u().b(true).a());
        }
    }

    protected void a(t tVar) {
        super.a(tVar);
        if (this.m) {
            tVar.d(2130969368).f(2130969223);
        }
    }

    protected void d() {
        super.d();
        b("::impression");
    }

    private void b(String str) {
        String str2 = this.i + ":" + str;
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).b(new String[]{as.a(as.a(this.m), str2)})).j(String.valueOf(this.n))).b(true));
    }
}
