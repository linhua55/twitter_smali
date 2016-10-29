package defpackage;

import android.content.Context;
import android.net.Uri.Builder;
import android.support.annotation.VisibleForTesting;
import com.google.android.exoplayer.DefaultLoadControl;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.av.l;
import com.twitter.library.av.playback.au;
import com.twitter.library.network.j;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.model.av.InvalidPlaylist;
import com.twitter.model.av.MediaEntityPlaylist;
import com.twitter.model.av.Video;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.am;
import com.twitter.util.network.b;
import com.twitter.util.telephony.TelephonyUtil;
import cpb;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
/* renamed from: bqe */
public class bqe extends bpx {
    public final MediaEntity a;

    public bqe(MediaEntity mediaEntity) {
        this.a = mediaEntity;
    }

    public AVMediaPlaylist a(Context context, au auVar, l lVar) {
        Video video = null;
        b e = TelephonyUtil.i().e();
        if (!cpb.c(this.a)) {
            return new InvalidPlaylist();
        }
        DynamicAdInfo a = a(lVar, auVar.c());
        DynamicAd dynamicAd = a != null ? a.a : null;
        if (dynamicAd != null) {
            video = dynamicAd.a(bqe.a(e, dynamicAd.c()));
        }
        MediaEntityPlaylist mediaEntityPlaylist = new MediaEntityPlaylist(e.b, Video.a(bqe.a(this.a, e), this.a), video, a);
        if (d.a("video_consumption_prefetch_enabled")) {
            try {
                AVMedia c = mediaEntityPlaylist.c();
                if (!(c == null || com.twitter.model.av.b.b(c))) {
                    HttpOperation a2 = new j(context, c.a()).a(new bqg()).a(DefaultLoadControl.DEFAULT_LOW_WATERMARK_MS).a();
                    a2.a("Range", "bytes=0-1");
                    a2.c();
                }
            } catch (Exception e2) {
            }
        }
        return mediaEntityPlaylist;
    }

    protected AVMediaPlaylist a(au auVar, i iVar, HttpOperation httpOperation, Map<String, String> map, DynamicAdInfo dynamicAdInfo) {
        return null;
    }

    protected i a(Context context) {
        return null;
    }

    protected void a(Builder builder, Map<String, String> map, DynamicAd dynamicAd) {
    }

    protected void a(Context context, Map<String, String> map, b bVar) {
    }

    @VisibleForTesting
    protected static String a(MediaEntity mediaEntity, b bVar) {
        if (mediaEntity.o == null) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        return bqe.a(bVar, mediaEntity.o.d);
    }

    private static String a(b bVar, List<am> list) {
        return (String) com.twitter.library.av.model.parser.d.a.a((List) list, bVar).c(TtmlNode.ANONYMOUS_REGION_ID);
    }
}
