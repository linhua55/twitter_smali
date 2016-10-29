package com.twitter.android.moments.ui.fullscreen;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import com.twitter.model.core.TwitterUser;

/* compiled from: Twttr */
public class r {
    public static Dialog a(Context context, TwitterUser twitterUser, a aVar, long j) {
        CharSequence[] charSequenceArr = new String[2];
        charSequenceArr[0] = context.getString(2131363117);
        Object[] objArr = new Object[1];
        objArr[0] = context.getString(2131364279, new Object[]{twitterUser.k});
        charSequenceArr[1] = context.getString(2131363106, objArr);
        Dialog create = new Builder(context).setItems(charSequenceArr, new s(context, twitterUser, aVar, j)).create();
        create.show();
        return create;
    }
}
