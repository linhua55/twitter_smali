package com.twitter.android.dm.widget;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.twitter.android.WebViewActivity;
import com.twitter.ui.view.a;

/* compiled from: Twttr */
class e extends a {
    final /* synthetic */ Context a;
    final /* synthetic */ ReadOnlyConversationFooterView b;

    e(ReadOnlyConversationFooterView readOnlyConversationFooterView, int i, int i2, boolean z, Context context) {
        this.b = readOnlyConversationFooterView;
        this.a = context;
        super(i, i2, z);
    }

    public void onClick(View view) {
        this.a.startActivity(new Intent(this.a, WebViewActivity.class).setData(Uri.parse(this.a.getString(2131364300))));
    }
}
