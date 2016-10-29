package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.dm.r;
import com.twitter.android.dm.w;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.as;

/* compiled from: Twttr */
class vj implements OnClickListener {
    final /* synthetic */ TweetFragment2 a;

    private vj(TweetFragment2 tweetFragment2) {
        this.a = tweetFragment2;
    }

    public void onClick(View view) {
        Tweet d = TweetFragment2.d(this.a);
        int id = view.getId();
        this.a.ap().b(id == 2131951909 ? 0 : 2);
        switch (id) {
            case 2131951909:
                if (io.a()) {
                    io.a(this.a.getActivity(), 3, d.d());
                    return;
                }
                if (TweetFragment2.M(this.a) != null) {
                    TweetFragment2.M(this.a).a(d);
                }
                TweetFragment2.a(this.a, "reply");
            case 2131951910:
                if (io.a()) {
                    io.a(this.a.getActivity(), 2, d.d());
                } else {
                    this.a.u();
                }
            case 2131951911:
                if (io.a()) {
                    TweetFragment2.h(this.a).a();
                    io.a(this.a.getActivity(), 1, d.d());
                    return;
                }
                this.a.a(view);
            case 2131951912:
                if (io.a()) {
                    io.a(this.a.getActivity(), 10, d.d());
                    return;
                }
                TweetFragment2.a(this.a, "share_via_dm");
                this.a.startActivity(r.a(this.a.getActivity(), new w().a(new as(TweetFragment2.d(this.a))).d()));
            case 2131951913:
                this.a.v();
            case 2131953427:
                this.a.B();
            default:
        }
    }
}
