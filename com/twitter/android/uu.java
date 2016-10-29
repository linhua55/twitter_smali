package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;
import bbu;
import bex;
import com.twitter.library.api.UserSettings;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bnd;

/* compiled from: Twttr */
class uu implements OnClickListener {
    final /* synthetic */ TweetFragment2 a;

    uu(TweetFragment2 tweetFragment2) {
        this.a = tweetFragment2;
    }

    public void onClick(View view) {
        if (view.getId() == 2131952700) {
            String charSequence = ((TextView) view).getText().toString();
            if (this.a.getResources().getString(2131363365).equals(charSequence)) {
                bbu.a(new TwitterScribeLog(TweetFragment2.m(this.a).g()).b(new String[]{"tweet:sensitive_media_interstitial::dispute_media:click"}));
                Toast.makeText(this.a.getActivity(), 2131363366, 0).show();
                this.a.b.g();
                TweetFragment2.p(this.a).a(new bnd(TweetFragment2.n(this.a), TweetFragment2.o(this.a), TweetFragment2.d(this.a).H, "dispute_media"));
                return;
            } else if (this.a.getResources().getString(2131363364).equals(charSequence)) {
                UserSettings j = TweetFragment2.c(this.a).j();
                if (!(j == null || j.k)) {
                    j.k = true;
                    TweetFragment2.r(this.a).a(bex.a(TweetFragment2.q(this.a), TweetFragment2.c(this.a), j, false, null));
                }
            }
        }
        this.a.b.c();
        this.a.a = true;
        view.setClickable(false);
        TweetFragment2.l(this.a);
    }
}
