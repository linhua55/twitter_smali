package com.twitter.android;

import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.android.widget.fo;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.object.ObjectUtils;
import defpackage.bbu;

/* compiled from: Twttr */
class tp implements OnClickListener {
    final /* synthetic */ String a;
    final /* synthetic */ int b;
    final /* synthetic */ TweetActivity c;

    tp(TweetActivity tweetActivity, String str, int i) {
        this.c = tweetActivity;
        this.a = str;
        this.b = i;
    }

    public void onClick(View view) {
        bbu.a(new TwitterScribeLog(this.c.ab().g()).b("tweet:notification_landing", this.a, ":click"));
        if (this.c.e != null && this.c.e.m() != null) {
            long[] jArr;
            switch (this.b) {
                case mx.TwitterEditText_maxCharacterCount /*11*/:
                    jArr = this.c.e.m().c;
                    break;
                case mx.TwitterEditText_characterCounterColor /*12*/:
                    jArr = this.c.e.m().d;
                    break;
                default:
                    jArr = null;
                    break;
            }
            if (jArr != null) {
                ((fo) ObjectUtils.a(this.c.e)).a(null, this.b, jArr);
            }
        }
    }
}
