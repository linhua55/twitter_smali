package com.twitter.android.timeline;

import android.support.annotation.LayoutRes;
import android.view.View;
import com.twitter.android.yj;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class ca extends g<bd> {
    public /* synthetic */ void a(View view, Object obj, int i) {
        b(view, (bd) obj, i);
    }

    public /* synthetic */ void b(View view, Object obj, int i) {
        a(view, (bd) obj, i);
    }

    public ca(@LayoutRes int i, FriendshipCache friendshipCache, yj yjVar) {
        super(i, friendshipCache, yjVar);
    }

    public void a(View view, bd bdVar, int i) {
        UserView userView = (UserView) view;
        TwitterUser twitterUser = bdVar.a;
        userView.setUser(twitterUser);
        userView.setScribeItem(TwitterScribeItem.a(twitterUser));
        userView.setScribeComponent(twitterUser.T != null ? twitterUser.T.e : null);
        this.a.a(twitterUser);
    }

    public void b(View view, bd bdVar, int i) {
    }
}
