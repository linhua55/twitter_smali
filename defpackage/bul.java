package defpackage;

import com.twitter.config.c;
import com.twitter.config.d;
import com.twitter.library.media.util.TweetImageVariant;
import com.twitter.media.model.ImageFormat;

/* compiled from: Twttr */
/* renamed from: bul */
public class bul {
    public static boolean a() {
        return c.a("fresco_images_pjpeg_3867", new String[]{"pipeline_only", "pjpeg"});
    }

    public static boolean b() {
        return c.a("fresco_images_pjpeg_3867", new String[]{"pjpeg"});
    }

    public static boolean a(ImageFormat imageFormat, TweetImageVariant tweetImageVariant) {
        return bul.b() && imageFormat == ImageFormat.JPEG && tweetImageVariant == TweetImageVariant.LARGE;
    }

    public static boolean c() {
        return bul.a() && d.a("fresco_images_pjpeg_3867_timelines_enabled");
    }

    public static boolean d() {
        return d.a("fresco_images_pjpeg_3867_overlay_color_enabled");
    }
}
