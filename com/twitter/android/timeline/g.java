package com.twitter.android.timeline;

import android.content.Context;
import android.support.annotation.LayoutRes;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.widget.l;
import com.twitter.android.yj;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;

/* compiled from: Twttr */
public abstract class g<T> implements l<T> {
    protected final FriendshipCache a;
    private final yj b;
    @LayoutRes
    private final int c;

    protected g(@LayoutRes int i, FriendshipCache friendshipCache, yj yjVar) {
        this.c = i;
        this.a = friendshipCache;
        this.b = yjVar;
    }

    public View a(Context context, T t, int i) {
        UserView userView = (UserView) LayoutInflater.from(context).inflate(this.c, null);
        userView.a(2130837689, this.b);
        userView.setOnClickListener(this.b);
        b(userView, t, i);
        return userView;
    }
}
