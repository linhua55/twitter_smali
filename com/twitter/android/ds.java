package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.support.annotation.DrawableRes;
import android.view.View;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.UserView;
import com.twitter.library.widget.e;
import com.twitter.media.ui.image.config.CommonRoundingStrategy;

/* compiled from: Twttr */
public class ds extends xs {
    public ds(Context context, @DrawableRes int i, e<UserView> eVar, FriendshipCache friendshipCache, boolean z) {
        super(context, i, eVar, friendshipCache, z);
    }

    public void a(View view, Context context, Cursor cursor, int i) {
        super.a(view, context, cursor, i);
        a(view).getImageView().setRoundingStrategy(CommonRoundingStrategy.c);
    }
}
