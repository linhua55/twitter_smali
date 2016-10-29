package com.twitter.library.media.util;

import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.exoplayer.util.Util;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.c;
import com.twitter.media.model.ImageFormat;
import com.twitter.media.request.d;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.math.Size;
import defpackage.bul;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public enum TweetImageVariant {
    THUMB(Size.a(150, 150), "thumb", true),
    SMALL(Size.a(340, 680), "small", true),
    MEDIUM(Size.a(600, 1200), "medium", true),
    LARGE(Size.a(1024, 2048), "large", true),
    LOWRES1(Size.a(100, Callback.DEFAULT_DRAG_ANIMATION_DURATION), "100x200", false),
    LOWRES2(Size.a(Callback.DEFAULT_DRAG_ANIMATION_DURATION, 400), "200x400", false);
    
    public static final d g;
    private static final boolean h;
    private final boolean mIsSizeAwareVariant;
    public final Size maxSize;
    public final String postfix;

    static {
        g = new ae();
        h = a();
    }

    private TweetImageVariant(Size size, String str, boolean z) {
        this.maxSize = size;
        this.postfix = str;
        this.mIsSizeAwareVariant = z;
    }

    public static List<String> a(String str, Size size) {
        List<String> arrayList = new ArrayList(4);
        if (!size.c()) {
            TweetImageVariant[] values = values();
            int length = values.length;
            int i = size.a() == size.b() ? 0 : 1;
            while (i < length) {
                TweetImageVariant tweetImageVariant = values[i];
                if (tweetImageVariant.mIsSizeAwareVariant && tweetImageVariant.maxSize.b(size)) {
                    arrayList.add(a(str, tweetImageVariant));
                }
                i++;
            }
        }
        if (CollectionUtils.b(arrayList)) {
            arrayList.add(a(str, LARGE));
        }
        return arrayList;
    }

    public static String a(String str) {
        TweetImageVariant b = b();
        if (b != null) {
            return a(str, b);
        }
        return null;
    }

    public static String a(String str, TweetImageVariant tweetImageVariant) {
        int i = 1;
        Uri parse = Uri.parse(str);
        String path = parse.getPath();
        ImageFormat b = ImageFormat.b(path);
        int i2 = (bul.a(b, tweetImageVariant) || !(h || tweetImageVariant == LOWRES1 || tweetImageVariant == LOWRES2)) ? 0 : 1;
        if (!(com.twitter.config.d.a("new_tweet_image_url_format") || tweetImageVariant == LOWRES1 || tweetImageVariant == LOWRES2)) {
            i = 0;
        }
        if (i != 0) {
            i = b != ImageFormat.INVALID ? path.lastIndexOf(".") : path.length();
            Builder buildUpon = parse.buildUpon();
            buildUpon.path(path.substring(0, i));
            if (i2 != 0) {
                buildUpon.appendQueryParameter("format", "webp");
            } else if (b != ImageFormat.INVALID) {
                buildUpon.appendQueryParameter("format", b.postfix);
            }
            buildUpon.appendQueryParameter("name", tweetImageVariant.postfix);
            return buildUpon.build().toString();
        }
        return str + ":" + tweetImageVariant.postfix + (i2 != 0 ? "?format=webp" : TtmlNode.ANONYMOUS_REGION_ID);
    }

    private static boolean a() {
        boolean z = true;
        int i = VERSION.SDK_INT;
        if (i < 17) {
            return false;
        }
        if (i >= 18) {
            return true;
        }
        String[] split = VERSION.RELEASE.split("\\.");
        if (split.length < 3) {
            return false;
        }
        try {
            if (Integer.parseInt(split[2]) < 1) {
                z = false;
            }
            return z;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    private static TweetImageVariant b() {
        String b = c.b("low_res_image_preview_3540");
        Object obj = -1;
        switch (b.hashCode()) {
            case 1980959719:
                if (b.equals("low_res_100")) {
                    obj = null;
                    break;
                }
                break;
            case 1980960680:
                if (b.equals("low_res_200")) {
                    obj = 1;
                    break;
                }
                break;
        }
        switch (obj) {
            case Util.TYPE_DASH /*0*/:
                return LOWRES1;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return LOWRES2;
            default:
                return null;
        }
    }
}
