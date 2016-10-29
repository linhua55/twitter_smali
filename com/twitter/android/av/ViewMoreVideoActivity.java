package com.twitter.android.av;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.widget.Toast;
import com.twitter.android.io;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.h;
import com.twitter.app.common.base.t;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.d;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;
import defpackage.bbu;
import defpackage.bbw;

/* compiled from: Twttr */
public class ViewMoreVideoActivity extends TwitterFragmentActivity {
    private Tweet a;
    private boolean b;
    private TwitterScribeAssociation c;

    public t a(Bundle bundle, t tVar) {
        tVar.d(2130968616);
        tVar.c(!io.a());
        return tVar;
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        this.c = new TwitterScribeAssociation();
        this.c.b("video_timeline");
        this.a = (Tweet) getIntent().getParcelableExtra("tw");
        long longExtra = getIntent().getLongExtra("search_id", -1);
        if (this.a == null || longExtra == -1) {
            Toast.makeText(this, getString(2131364163), 1).show();
            finish();
            return;
        }
        setTitle(this.a.d());
        b(getString(2131364164));
        if (bundle == null) {
            boolean z;
            Fragment viewMoreVideoFragment = new ViewMoreVideoFragment();
            if (io.a()) {
                z = false;
            } else {
                z = true;
            }
            viewMoreVideoFragment.e(z);
            viewMoreVideoFragment.a(new h().a("search_id", longExtra).a("tw", this.a).a("association", this.c).c());
            getSupportFragmentManager().beginTransaction().replace(2131951923, viewMoreVideoFragment, ViewMoreVideoFragment.class.getName()).commit();
        } else {
            this.b = bundle.getBoolean("scribe_event_sent", false);
        }
        if (!this.b) {
            c();
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("scribe_event_sent", this.b);
    }

    private void c() {
        Session c = bg.a().c();
        String a = TwitterScribeLog.a(this.c, null, null, "impression");
        String str = getResources().getConfiguration().orientation == 2 ? "2" : "1";
        bbw twitterScribeLog = new TwitterScribeLog(c.g());
        twitterScribeLog.b(a);
        twitterScribeLog.l(str);
        bbu.a(twitterScribeLog);
        this.b = true;
    }
}
