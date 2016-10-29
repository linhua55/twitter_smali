package com.twitter.library.dm;

import android.net.Uri;
import android.net.Uri.Builder;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import com.twitter.media.request.d;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
public enum DMGroupAvatarImageVariant {
    SMALL(Size.a(150, 150), "150x150"),
    MEDIUM(Size.a(340, 680), "340x680"),
    LARGE(Size.a(600, 1200), "600x1200"),
    FULL(Size.a((int) AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, (int) ItemAnimator.FLAG_MOVED), "1024x2048");
    
    public static d e;
    public final Size maxSize;
    public final String name;

    static {
        e = new a();
    }

    private DMGroupAvatarImageVariant(Size size, String str) {
        this.maxSize = size;
        this.name = str;
    }

    public static String a(String str, DMGroupAvatarImageVariant dMGroupAvatarImageVariant) {
        Uri parse = Uri.parse(str);
        Builder clearQuery = parse.buildUpon().clearQuery();
        for (String str2 : parse.getQueryParameterNames()) {
            if (!str2.equals("name")) {
                clearQuery.appendQueryParameter(str2, parse.getQueryParameter(str2));
            }
        }
        clearQuery.appendQueryParameter("name", dMGroupAvatarImageVariant.name);
        return clearQuery.build().toString();
    }
}
