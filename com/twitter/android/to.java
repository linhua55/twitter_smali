package com.twitter.android;

import com.twitter.android.composer.ComposerType;
import com.twitter.android.util.v;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.aqn;
import defpackage.bbu;

/* compiled from: Twttr */
class to implements aqn {
    final /* synthetic */ TweetActivity a;

    to(TweetActivity tweetActivity) {
        this.a = tweetActivity;
    }

    public void a() {
        this.a.e.b(true);
    }

    public void b() {
        this.a.s();
    }

    public void c() {
        this.a.b(this.a.d);
    }

    public void d() {
        bbu.a(new TwitterScribeLog(this.a.c.g()).b(":composition::add_photo:click"));
    }

    public void e() {
        bbu.a(new TwitterScribeLog(this.a.c.g()).b(":composition::remove_photo:click"));
    }

    public void f() {
        v.a(this.a, (int) mx.AppCompatTheme_editTextStyle, ComposerType.INLINE_REPLY);
    }
}
