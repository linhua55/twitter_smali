package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.internal.android.widget.p;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.ActionButton;
import com.twitter.library.widget.UserView;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class ActivityUserView extends UserView implements p {
    private String u;
    private boolean v;

    public ActivityUserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setHighlighted(boolean z) {
        if (this.v != z) {
            this.v = z;
            refreshDrawableState();
        }
    }

    public void setReason(String str) {
        this.u = str;
    }

    public String getReason() {
        return this.u;
    }

    public void a(FriendshipCache friendshipCache, TwitterUser twitterUser, boolean z, long j) {
        a(twitterUser.k, twitterUser.d);
        a();
        setUserImageUrl(twitterUser.e);
        a(this.r, twitterUser, friendshipCache, z, j);
    }

    public static void a(ActionButton actionButton, TwitterUser twitterUser, FriendshipCache friendshipCache, boolean z, long j) {
        if (actionButton == null) {
            return;
        }
        if (friendshipCache != null) {
            if (!friendshipCache.a(twitterUser.c)) {
                friendshipCache.a(twitterUser);
            }
            int intValue = friendshipCache.j(twitterUser.c).intValue();
            boolean z2 = (intValue & 64) != 0;
            boolean a = com.twitter.model.core.p.a(intValue);
            actionButton.setChecked(a);
            if (twitterUser.c == j || (z && a && !z2)) {
                actionButton.setVisibility(8);
                return;
            } else {
                actionButton.setVisibility(0);
                return;
            }
        }
        actionButton.setVisibility(0);
        actionButton.setChecked(false);
    }
}
