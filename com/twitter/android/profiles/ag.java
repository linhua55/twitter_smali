package com.twitter.android.profiles;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.util.aq;

/* compiled from: Twttr */
final class ag implements OnClickListener {
    final /* synthetic */ Context a;

    ag(Context context) {
        this.a = context;
    }

    public void onClick(View view) {
        aq.a(this.a, Uri.parse(this.a.getString(2131364426)));
    }
}
