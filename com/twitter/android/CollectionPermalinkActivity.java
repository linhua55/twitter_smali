package com.twitter.android;

import android.content.Intent;
import android.os.Bundle;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.j;
import com.twitter.library.api.timeline.TimelineHelper;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class CollectionPermalinkActivity extends UserQueryActivity {
    protected CharSequence a(Intent intent) {
        return getString(2131362803);
    }

    protected ic a(Intent intent, t tVar) {
        TwitterListFragment collectionPermalinkFragment = new CollectionPermalinkFragment();
        collectionPermalinkFragment.a(((j) j.a(intent).h(true)).b());
        return new ic(collectionPermalinkFragment);
    }

    public t a(Bundle bundle, t tVar) {
        tVar.d(true);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        c();
    }

    protected void onStart() {
        super.onStart();
        TimelineFragment timelineFragment = (TimelineFragment) getSupportFragmentManager().findFragmentById(2131951923);
        timelineFragment.e(!io.a());
        N().a(timelineFragment.U());
        TimelineHelper.a().b();
    }

    protected void a(TwitterUser twitterUser) {
        super.a(twitterUser);
        TimelineFragment timelineFragment = (TimelineFragment) getSupportFragmentManager().findFragmentById(2131951923);
        if (timelineFragment != null) {
            timelineFragment.a(twitterUser);
        }
    }
}
