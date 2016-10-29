package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import cgu;
import com.twitter.android.mx;
import com.twitter.android.timeline.bd;
import com.twitter.android.timeline.cd;
import com.twitter.android.timeline.ck;
import com.twitter.android.yj;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.util.ao;
import com.twitter.library.widget.UserSocialView;
import com.twitter.library.widget.e;
import com.twitter.model.core.TwitterSocialProof;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.model.timeline.aj;
import com.twitter.model.timeline.cr;
import com.twitter.util.ak;
import defpackage.bcw;
import defpackage.buf;

/* compiled from: Twttr */
public class WhoToFollowUsersView extends LinearLayout {
    protected int a;
    protected LayoutInflater b;
    private yj c;

    public WhoToFollowUsersView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WhoToFollowUsersView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.WhoToFollowUsersView, i, 0);
        this.a = obtainStyledAttributes.getInt(0, 3);
        obtainStyledAttributes.recycle();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        for (int i = 0; i < this.a; i++) {
            a();
        }
    }

    private UserSocialView a() {
        UserSocialView userSocialView = (UserSocialView) this.b.inflate(2130969550, null);
        setViewProperties(userSocialView);
        addView(userSocialView);
        return userSocialView;
    }

    @VisibleForTesting
    protected void setViewProperties(UserSocialView userSocialView) {
        userSocialView.setContentSize(ao.a);
        userSocialView.setUserImageSize(buf.a().b());
        userSocialView.setScreenNameColor(getContext().getResources().getColor(2131886400));
        userSocialView.r.setBackgroundResource(2130837690);
    }

    public void a(cd cdVar, FriendshipCache friendshipCache, int i, ck ckVar) {
        cgu cgu = cdVar.a;
        cr crVar = cdVar.c;
        int max = Math.max(cgu.aU_(), getChildCount());
        int i2 = 0;
        while (i2 < max) {
            bd bdVar = (bd) cgu.a(i2);
            UserSocialView userSocialView = (UserSocialView) getChildAt(i2);
            if (bdVar != null || userSocialView == null) {
                UserSocialView a;
                String bg_ = bdVar.a.bg_();
                TwitterSocialProof twitterSocialProof = crVar != null ? (TwitterSocialProof) crVar.f.get(bg_) : null;
                if (userSocialView == null) {
                    a = a();
                } else {
                    a = userSocialView;
                }
                a.setVisibility(0);
                a(a, bdVar, twitterSocialProof, friendshipCache, (aj) crVar.g.get(bg_), i2, i, ckVar);
                i2++;
            } else {
                userSocialView.setVisibility(8);
                return;
            }
        }
    }

    private void a(UserSocialView userSocialView, bd bdVar, TwitterSocialProof twitterSocialProof, FriendshipCache friendshipCache, aj ajVar, int i, int i2, ck ckVar) {
        TwitterUser twitterUser = bdVar.a;
        TwitterScribeItem a = TwitterScribeItem.a(twitterUser);
        a.h = i;
        a.g = i2;
        if (ajVar != null) {
            a.am = ajVar;
            userSocialView.setScribeComponent(ajVar.e);
        }
        userSocialView.setScribeItem(a);
        userSocialView.setUser(twitterUser);
        userSocialView.a(twitterSocialProof, (int) bcw.ic_activity_follow_tweet_default, ak.f());
        friendshipCache.a(twitterUser);
        userSocialView.r.setChecked(p.a(friendshipCache.j(twitterUser.bf_()).intValue()));
        userSocialView.a(2130837689, (e) this.c);
        userSocialView.setOnClickListener(this.c);
        if (ckVar != null) {
            ckVar.a(bdVar, i);
        }
    }

    public void setWhoToFollowUserClickListener(yj yjVar) {
        this.c = yjVar;
    }
}
