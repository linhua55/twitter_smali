package com.twitter.library.media.fresco;

import android.net.Uri;
import android.net.Uri.Builder;
import com.twitter.library.media.util.TweetImageVariant;
import com.twitter.media.model.ImageFormat;

/* compiled from: Twttr */
public class n {
    public static String a(String str) {
        Uri parse = Uri.parse(str);
        String authority = parse.getAuthority();
        String path = parse.getPath();
        if (!authority.equals("pbs.twimg.com") || !path.startsWith("/media/")) {
            return str;
        }
        boolean b = b(path);
        String queryParameter = parse.getQueryParameter("format");
        if (queryParameter != null) {
            if (!queryParameter.equalsIgnoreCase(ImageFormat.JPEG.postfix)) {
                return str;
            }
        } else if (!b) {
            return str;
        }
        queryParameter = parse.getQueryParameter("name");
        if (queryParameter != null) {
            if (!queryParameter.equalsIgnoreCase(TweetImageVariant.LARGE.postfix)) {
                return str;
            }
        } else if (!path.endsWith(":" + TweetImageVariant.LARGE.postfix)) {
            return str;
        }
        Builder appendQueryParameter = parse.buildUpon().clearQuery().appendQueryParameter("format", "pjpg").appendQueryParameter("name", TweetImageVariant.LARGE.postfix);
        if (b) {
            path = path.substring(0, path.lastIndexOf("."));
        }
        return appendQueryParameter.path(path).toString();
    }

    private static boolean b(String str) {
        String toLowerCase = str.toLowerCase();
        for (CharSequence contains : ImageFormat.JPEG.extensions) {
            if (toLowerCase.contains(contains)) {
                return true;
            }
        }
        return false;
    }
}
