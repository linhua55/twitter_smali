package com.twitter.android;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import com.twitter.library.widget.UserView;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.aj;

/* compiled from: Twttr */
class f extends ArrayAdapter<UserAccount> {
    private final String a;

    f(Context context, UserAccount[] userAccountArr, String str) {
        super(context, 0, userAccountArr);
        this.a = str;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View inflate;
        ImageView imageView;
        CharSequence charSequence;
        if (view == null) {
            inflate = LayoutInflater.from(viewGroup.getContext()).inflate(2130968602, viewGroup, false);
            ImageView imageView2 = (ImageView) inflate.findViewById(2131951906);
            inflate.setTag(imageView2);
            imageView = imageView2;
        } else {
            imageView = (ImageView) view.getTag();
            inflate = view;
        }
        UserView userView = (UserView) inflate;
        UserAccount userAccount = (UserAccount) getItem(i);
        TwitterUser twitterUser = userAccount.b;
        userView.setUser(twitterUser);
        String str = BuildConfig.VERSION_NAME;
        if (aj.b(twitterUser.d)) {
            str = str + twitterUser.d + ". ";
        }
        str = str + "@" + twitterUser.k + ".";
        if (userAccount.a.name.equals(this.a)) {
            imageView.setVisibility(0);
            charSequence = getContext().getString(2131363596) + ". " + str;
        } else {
            imageView.setVisibility(4);
            Object obj = str;
        }
        userView.setContentDescription(charSequence);
        return inflate;
    }
}
