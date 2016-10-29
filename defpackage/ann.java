package defpackage;

import android.app.Activity;
import com.twitter.library.media.widget.aa;
import com.twitter.library.media.widget.z;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.util.h;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.i;
import com.twitter.library.widget.tweet.content.l;
import com.twitter.library.widget.tweet.content.p;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
/* renamed from: ann */
public class ann extends p {
    protected i a(Activity activity, Tweet tweet, DisplayMode displayMode, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2, h hVar) {
        Integer a = hVar.a(0);
        Integer a2 = hVar.a(1);
        z zVar = (z) hVar.get(3);
        l lVar = (l) hVar.get(4);
        return new ank(activity, tweet, displayMode, p.a(a), p.a(a2), lVar, zVar, twitterScribeAssociation, twitterScribeAssociation2);
    }

    protected i a(Activity activity, Tweet tweet, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2, h hVar) {
        return new anl(activity, tweet, (aa) hVar.get(4), twitterScribeAssociation, twitterScribeAssociation2);
    }
}
