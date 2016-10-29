package defpackage;

import android.content.Context;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: ts */
public class ts {
    static final Map<String, List<String>> a;
    private final tx b;

    static {
        a = (Map) r.d().b("playback_start", n.a("start", new String[]{"impressionTag"})).b("video_view", n.b("creativeView")).b("playback_25", n.b("firstQuartile")).b("playback_50", n.b("midpoint")).b("playback_75", n.b("thirdQuartile")).b("playback_complete", n.b("complete")).b("pause", n.b("pause")).b("resume", n.b("resume")).b("rewind", n.b("rewind")).b("close", n.b("stop")).b("error", n.b("errorTag")).b("checkpoint", n.b("checkpoint")).b("cta_impression_signup", n.b("ctaImpressionSignup")).b("cta_impression_open", n.b("ctaImpressionOpen")).b("cta_click_signup", n.b("ctaClickSignup")).b("cta_click_open", n.b("ctaClickOpen")).q();
    }

    public ts(Context context) {
        this(tx.a(context));
    }

    ts(tx txVar) {
        this.b = txVar;
    }

    public void a(Context context, String str, AVMediaPlaylist aVMediaPlaylist, AVMedia aVMedia, String str2) {
        List<String> list = (List) a.get(str);
        if (list != null && aVMedia != null) {
            for (String a : list) {
                Object a2 = aVMedia.a(a);
                if (!CollectionUtils.b(a2)) {
                    this.b.a(aVMedia).a(context, a2, str2, aVMediaPlaylist);
                }
            }
        }
    }
}
