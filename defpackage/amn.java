package defpackage;

import android.content.Context;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: amn */
public class amn {
    private final Context a;
    private final bg b;
    private final TwitterScribeAssociation c;

    public amn(Context context, bg bgVar, TwitterScribeAssociation twitterScribeAssociation) {
        this.a = context;
        this.b = bgVar;
        this.c = twitterScribeAssociation;
    }

    public void a(String str, String str2, Tweet tweet, TwitterScribeItem twitterScribeItem) {
        bbu.a(b(str, str2, tweet, twitterScribeItem));
    }

    private String a(Tweet tweet) {
        if (tweet.H()) {
            return "focal";
        }
        if (tweet.G()) {
            return "ancestor";
        }
        return null;
    }

    private TwitterScribeLog b(String str, String str2, Tweet tweet, TwitterScribeItem twitterScribeItem) {
        String b = Tweet.b(tweet);
        return (TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(this.b.c().g()).a(this.a, tweet, this.c, a(tweet)).b(TwitterScribeLog.a(this.c, b, str, str2))).a(this.c)).a((ScribeItem) twitterScribeItem);
    }

    public static amn a(Context context, TwitterScribeAssociation twitterScribeAssociation) {
        return new amn(context, bg.a(), twitterScribeAssociation);
    }
}
