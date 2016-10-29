package com.twitter.media.model;

import android.net.Uri;
import com.twitter.util.aj;

/* compiled from: Twttr */
public enum ImageFormat {
    JPEG(new String[]{".jpeg", ".jpg"}, "jpg"),
    GIF(new String[]{".gif"}, "gif"),
    PNG(new String[]{".png"}, "png"),
    INVALID(new String[0], TtmlNode.ANONYMOUS_REGION_ID);
    
    public final String[] extensions;
    public final String postfix;

    private ImageFormat(String[] strArr, String str) {
        this.extensions = strArr;
        this.postfix = str;
    }

    public static ImageFormat a(String str) {
        return b(Uri.parse(str).getPath());
    }

    public static ImageFormat b(String str) {
        for (ImageFormat imageFormat : values()) {
            for (String c : imageFormat.extensions) {
                if (aj.c(str, c)) {
                    return imageFormat;
                }
            }
        }
        return INVALID;
    }
}
