package com.twitter.android;

import android.content.Context;
import android.view.View;
import com.twitter.android.timeline.aw;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.internal.android.widget.GroupedRowView;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.view.aa;
import com.twitter.ui.view.s;

/* compiled from: Twttr */
public class gy extends vu {
    public gy(TwitterFragmentActivity twitterFragmentActivity, boolean z, aa aaVar, FriendshipCache friendshipCache, int i, TwitterScribeAssociation twitterScribeAssociation) {
        super(twitterFragmentActivity, z, aaVar, friendshipCache, 2130968872, 2130968876, i, twitterScribeAssociation);
    }

    public gy(TwitterFragmentActivity twitterFragmentActivity, boolean z, aa aaVar, FriendshipCache friendshipCache, int i, TwitterScribeAssociation twitterScribeAssociation, s sVar) {
        super(twitterFragmentActivity, z, aaVar, friendshipCache, 2130968872, 2130968876, i, twitterScribeAssociation, sVar);
    }

    protected void a(View view, Context context, aw awVar, int i) {
        super.a(view, context, awVar, i);
        ((GroupedRowView) view).a(i, getCount());
    }
}
