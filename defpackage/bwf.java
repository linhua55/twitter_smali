package defpackage;

import android.text.TextUtils;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.TwitterPlace.PlaceType;

/* compiled from: Twttr */
/* renamed from: bwf */
public class bwf {
    public static String a(TwitterPlace twitterPlace) {
        if (twitterPlace.c != PlaceType.a) {
            return twitterPlace.d;
        }
        String str = twitterPlace.f;
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        str = twitterPlace.d;
        int lastIndexOf = str.lastIndexOf(",");
        if (lastIndexOf != -1) {
            return str.substring(0, lastIndexOf);
        }
        return str;
    }
}
