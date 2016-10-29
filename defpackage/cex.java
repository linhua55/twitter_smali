package defpackage;

import android.content.Context;
import com.twitter.config.d;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.bg;
import com.twitter.util.a;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* compiled from: Twttr */
/* renamed from: cex */
public class cex {
    private static final Set<String> a;
    private static final Set<String> b;

    static {
        a = new HashSet(Arrays.asList(new String[]{"ar", "bg", "ca", "cs", "da", "de", "el", "en", "en-gb", "es", "et", "fa", "fi", "fr", "he", "hi", "ht", "hu", TtmlNode.ATTR_ID, "in", "it", "iw", "ja", "ko", "lt", "lv", "nl", "no", "pl", "pt", "ro", "ru", "sk", "sl", "sv", "th", "tr", "uk", "ur", "vi", "zh", "zh-cn", "zh-tw"}));
        b = new HashSet(Arrays.asList(new String[]{"da", "de", "en", "es", "et", "fi", "fr", "ht", "hu", TtmlNode.ATTR_ID, "in", "is", "tr", "vi", "en-gb", "it", "lt", "lv", "nl", "no", "pl", "pt", "sk", "sl", "sv", "tl"}));
    }

    public static boolean a(String str) {
        return a.contains(str.toLowerCase());
    }

    public static boolean b(String str) {
        return b.contains(str);
    }

    public static String a(String str, String str2) {
        if (str == null || str2 == null) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        return cex.c(str).getDisplayLanguage(new Locale(str2));
    }

    public static boolean a(Context context, Tweet tweet) {
        return d.a("translate_tweet_enabled") && cex.b(context, tweet);
    }

    static boolean b(Context context, Tweet tweet) {
        boolean z = true;
        Locale locale = context.getResources().getConfiguration().locale;
        if (locale == null) {
            return false;
        }
        boolean z2;
        if (tweet.T == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        String b = a.b(locale);
        if (!(!tweet.G && r0 && tweet.S != null && cex.a(b) && cex.a(tweet.S) && !b.equals(tweet.S) && cex.a(tweet))) {
            z = false;
        }
        return z;
    }

    private static boolean a(Tweet tweet) {
        return !cex.b(tweet.S) || bg.a(tweet.f(), tweet.w) > 20;
    }

    private static Locale c(String str) {
        String[] split = str.split("-");
        if (split.length > 1) {
            return new Locale(split[0], split[1]);
        }
        return new Locale(str);
    }
}
