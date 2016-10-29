package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.support.annotation.DrawableRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.widget.ActivityUserView;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
final class k extends xs {
    private final boolean a;

    k(Context context, @DrawableRes int i, e<UserView> eVar, FriendshipCache friendshipCache, boolean z, boolean z2) {
        super(context, i, eVar, friendshipCache, z);
        this.a = z2;
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        ActivityUserView activityUserView = (ActivityUserView) LayoutInflater.from(context).inflate(2130968614, viewGroup, false);
        a(activityUserView);
        return activityUserView;
    }

    protected UserView a(UserView userView) {
        userView.a(2130837689, this.f);
        userView.r.setBackgroundResource(2130837690);
        userView.setTag(new xp(userView));
        return userView;
    }

    public void a(View view, Context context, Cursor cursor) {
        TwitterUser a = h.a(cursor);
        ActivityUserView activityUserView = (ActivityUserView) view;
        activityUserView.setUserId(a.c);
        activityUserView.a(this.g, a, this.a, this.h);
    }
}
