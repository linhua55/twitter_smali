package com.twitter.model.json.card;

import android.webkit.URLUtil;
import java.net.MalformedURLException;

/* compiled from: Twttr */
public class a {
    public static String a(String str) throws MalformedURLException {
        if (!str.equals("")) {
            str = str.trim();
            if (!(URLUtil.isValidUrl(str) || str.startsWith("res://") || str.startsWith("capi://") || str.startsWith("card://"))) {
                throw new MalformedURLException(str);
            }
        }
        return str;
    }
}
