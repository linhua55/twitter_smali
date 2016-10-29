package com.twitter.android.news;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.xs;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;

/* compiled from: Twttr */
public class l extends xs {
    public l(Context context, int i, e<UserView> eVar, FriendshipCache friendshipCache, boolean z) {
        super(context, i, eVar, friendshipCache, z);
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2130968879, viewGroup, false);
        a((UserView) inflate.findViewById(2131953353));
        return inflate;
    }

    public UserView a(View view) {
        return (UserView) view.findViewById(2131953353);
    }
}
