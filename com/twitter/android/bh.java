package com.twitter.android;

import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import bdk;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.model.core.TwitterUser;
import java.util.List;

/* compiled from: Twttr */
class bh extends bdk<Cursor> {
    final /* synthetic */ CategoriesFragment a;

    bh(CategoriesFragment categoriesFragment, Context context) {
        this.a = categoriesFragment;
        super(context, 0);
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(context).inflate(2130969433, null);
        inflate.setTag(new bi(inflate));
        return inflate;
    }

    public void a(View view, Context context, Cursor cursor, int i) {
        Bundle extras = cursor.getExtras();
        Object string = extras.getString("name");
        bi biVar = (bi) view.getTag();
        biVar.a.setText(string);
        boolean add = CategoriesFragment.a(this.a).add(string);
        if (add) {
            TwitterScribeItem a = TwitterScribeItem.a(string, "related_query");
            a.g = i + 1;
            CategoriesFragment.b(this.a).add(a);
        }
        List parcelableArrayList = extras.getParcelableArrayList("users");
        if (parcelableArrayList != null) {
            int childCount = biVar.b.getChildCount();
            int size = parcelableArrayList.size();
            for (int i2 = 0; i2 < childCount; i2++) {
                UserImageView userImageView = (UserImageView) biVar.b.getChildAt(i2);
                if (i2 < size) {
                    TwitterUser twitterUser = (TwitterUser) parcelableArrayList.get(i2);
                    userImageView.a(twitterUser);
                    if (add) {
                        CategoriesFragment.c(this.a).add(TwitterScribeItem.a(twitterUser.bf_(), twitterUser.B, twitterUser.h(), null, i + 1, null));
                    }
                    userImageView.setVisibility(0);
                } else {
                    userImageView.f();
                    userImageView.setVisibility(4);
                }
            }
        }
    }

    protected final void a(View view, Context context, Cursor cursor) {
    }
}
