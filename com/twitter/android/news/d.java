package com.twitter.android.news;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.library.scribe.ScribeItem;

/* compiled from: Twttr */
class d implements OnClickListener {
    final /* synthetic */ NewsDetailActivity a;

    d(NewsDetailActivity newsDetailActivity) {
        this.a = newsDetailActivity;
    }

    public void onClick(View view) {
        this.a.a("news_details:::view_more_button:click", (ScribeItem) new NewsDetailScribeItem(this.a.A));
        this.a.A();
    }
}
