package defpackage;

import com.twitter.library.av.ad;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: ve */
final class ve implements ad {
    final /* synthetic */ TweetAVDataSource a;

    ve(TweetAVDataSource tweetAVDataSource) {
        this.a = tweetAVDataSource;
    }

    public Tweet a() {
        return this.a.b();
    }
}
