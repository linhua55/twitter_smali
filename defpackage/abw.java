package defpackage;

import android.content.Context;
import com.twitter.config.d;

/* compiled from: Twttr */
/* renamed from: abw */
public class abw {
    public static int a() {
        if (d.a("media_async_upload_gif_enabled")) {
            float a = d.a("media_async_upload_max_gif_size", 0.0f);
            if (a > 0.0f) {
                return (int) (a * 1048576.0f);
            }
        }
        return d.a("animated_content_5mb_limit_enabled") ? 5242880 : 3145728;
    }

    public static String a(Context context) {
        if (d.a("media_async_upload_gif_enabled")) {
            if (d.a("media_async_upload_max_gif_size", 0.0f) > 0.0f) {
                return context.getString(2131362924, new Object[]{Float.valueOf(d.a("media_async_upload_max_gif_size", 0.0f))});
            }
        }
        return context.getString(d.a("animated_content_5mb_limit_enabled") ? 2131362926 : 2131362925);
    }
}
