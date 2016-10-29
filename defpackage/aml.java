package defpackage;

import android.content.Context;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.util.FriendshipCache;
import com.twitter.library.widget.au;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: aml */
public class aml {
    private Context a;
    private bg b;
    private az c;
    private amn d;
    private Tweet e;
    private FriendshipCache f;
    private TwitterScribeItem g;
    private au h;
    private String i;

    aml(Context context, bg bgVar, az azVar, amn amn) {
        this.a = context;
        this.b = bgVar;
        this.c = azVar;
        this.d = amn;
    }

    public aml a(Tweet tweet) {
        this.e = tweet;
        return this;
    }

    public aml a(FriendshipCache friendshipCache) {
        this.f = friendshipCache;
        return this;
    }

    public aml a(TwitterScribeItem twitterScribeItem) {
        this.g = twitterScribeItem;
        return this;
    }

    public aml a(au auVar) {
        this.h = auVar;
        return this;
    }

    public aml a(String str) {
        this.i = str;
        return this;
    }

    public amm a() {
        return new amk(this);
    }

    public static aml a(Context context, amn amn) {
        return new aml(context, bg.a(), az.a(context), amn);
    }
}
