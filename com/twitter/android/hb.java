package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bdl;
import cni;
import com.twitter.library.widget.BaseUserView;
import com.twitter.library.widget.UserSocialView;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.ak;

/* compiled from: Twttr */
public class hb extends bdl<TwitterUser> {
    private final e<UserView> a;
    private final kr<BaseUserView, cni> b;

    public hb(Context context, e<UserView> eVar, kr<BaseUserView, cni> krVar) {
        super(context);
        this.a = eVar;
        this.b = krVar;
    }

    protected View a(Context context, TwitterUser twitterUser, ViewGroup viewGroup) {
        UserView userView = (UserView) LayoutInflater.from(context).inflate(2130968673, viewGroup, false);
        userView.setCheckBoxClickListener(this.a);
        xp xpVar = new xp(userView);
        xpVar.a(twitterUser);
        xpVar.i = 36;
        userView.setTag(xpVar);
        return userView;
    }

    protected void a(View view, Context context, TwitterUser twitterUser) {
        UserSocialView userSocialView = (UserSocialView) view;
        userSocialView.setUser(twitterUser);
        userSocialView.a(twitterUser.g, twitterUser.D);
        userSocialView.a(context.getString(2131363453), ak.f());
        this.b.a(userSocialView, null, Bundle.EMPTY);
    }

    public long getItemId(int i) {
        TwitterUser twitterUser = (TwitterUser) getItem(i);
        return twitterUser != null ? twitterUser.c : 0;
    }
}
