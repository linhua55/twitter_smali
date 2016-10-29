package com.twitter.android.browser;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.WebSettings;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/* compiled from: Twttr */
public class i {
    @TargetApi(17)
    public static String a(Context context) {
        return WebSettings.getDefaultUserAgent(context) + " " + "TwitterAndroid";
    }

    static String a(String str) {
        int indexOf = str.indexOf(63);
        if (indexOf > 0) {
            return str.substring(0, indexOf);
        }
        return str;
    }

    public static String b(String str) {
        String a = a(str);
        if (a.endsWith(".png") || a.endsWith(".jpg") || a.endsWith(".jpeg") || a.endsWith(".gif")) {
            return "image";
        }
        if (a.endsWith(".js")) {
            return "javascript";
        }
        if (a.endsWith(".css")) {
            return "css";
        }
        return TtmlNode.ANONYMOUS_REGION_ID;
    }

    public static boolean c(String str) {
        if (str == null) {
            return false;
        }
        try {
            String decode = URLDecoder.decode(str, Util.UTF_8);
            if (decode == null || !decode.startsWith("data:")) {
                return false;
            }
            return true;
        } catch (UnsupportedEncodingException e) {
            return false;
        }
    }
}
