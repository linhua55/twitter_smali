package defpackage;

import android.content.Context;
import android.net.Uri.Builder;
import android.preference.PreferenceManager;
import android.support.v7.recyclerview.BuildConfig;
import bpv;
import bpx;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.i;
import com.twitter.library.av.model.parser.VideoVmapPlaylistParser;
import com.twitter.library.av.model.parser.c;
import com.twitter.library.av.playback.au;
import com.twitter.model.av.AVMediaPlaylist;
import com.twitter.model.av.DynamicAd;
import com.twitter.model.av.DynamicAdInfo;
import com.twitter.model.av.Video;
import com.twitter.model.av.VideoPlaylist;
import com.twitter.util.aj;
import com.twitter.util.network.DownloadQuality;
import com.twitter.util.network.b;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Deprecated
/* compiled from: Twttr */
/* renamed from: bqd */
public class bqd extends bpx {
    protected boolean a;

    protected /* synthetic */ i a(Context context) {
        return e(context);
    }

    protected /* synthetic */ AVMediaPlaylist a(au auVar, i iVar, HttpOperation httpOperation, Map map, DynamicAdInfo dynamicAdInfo) {
        return b(auVar, iVar, httpOperation, map, dynamicAdInfo);
    }

    protected c e(Context context) {
        return VideoVmapPlaylistParser.a();
    }

    protected VideoPlaylist b(au auVar, i iVar, HttpOperation httpOperation, Map<String, String> map, DynamicAdInfo dynamicAdInfo) {
        Video[] a;
        c cVar = (c) iVar;
        String str = null;
        if (!(httpOperation == null || httpOperation.j())) {
            if (cVar.b == 0) {
                cVar.b = 1;
            }
            str = bqd.a(httpOperation);
        }
        if (this.a) {
            a = bqd.a(cVar.a);
        } else {
            a = cVar.a;
        }
        return new VideoPlaylist(a, cVar.b, map, str, dynamicAdInfo);
    }

    static Video[] a(Video[] videoArr) {
        List arrayList = new ArrayList();
        if (videoArr != null) {
            for (Video video : videoArr) {
                if (!"ad".equals(video.b())) {
                    arrayList.add(video);
                }
            }
        }
        return (Video[]) arrayList.toArray(new Video[arrayList.size()]);
    }

    protected void a(Builder builder, Map<String, String> map, DynamicAd dynamicAd) {
        builder.appendQueryParameter("Detected-Bandwidth", (String) map.get("Detected-Bandwidth"));
        builder.appendQueryParameter("Android-Profile-Main", (String) map.get("Android-Profile-Main"));
        builder.appendQueryParameter("Android-Profile-High", (String) map.get("Android-Profile-High"));
        if (dynamicAd != null && dynamicAd.a != null) {
            builder.appendQueryParameter("adId", dynamicAd.a);
        }
    }

    protected void a(Context context, Map<String, String> map, b bVar) {
        DownloadQuality downloadQuality = bVar.a;
        if (AppConfig.m().p()) {
            CharSequence string = PreferenceManager.getDefaultSharedPreferences(context).getString("video_multi_bitrate_network_type", null);
            if (aj.b(string)) {
                try {
                    downloadQuality = DownloadQuality.valueOf(string);
                } catch (IllegalArgumentException e) {
                }
            }
        }
        map.put("Detected-Bandwidth", a(bVar));
        map.put("Network-Quality-Bucket", downloadQuality.name());
        map.put("Carrier-Name", bVar.c);
        bpv a = bpv.a();
        map.put("Android-Profile-Main", Boolean.toString(a.b()));
        map.put("Android-Profile-High", Boolean.toString(a.c()));
    }

    protected String a(b bVar) {
        return a(bVar.a);
    }

    protected String a(DownloadQuality downloadQuality) {
        List c = c();
        if (c == null || c.size() < DownloadQuality.a()) {
            return b();
        }
        return c.get(downloadQuality.b()).toString();
    }

    protected String b() {
        String d = d();
        if (BuildConfig.VERSION_NAME.equals(d) || d == null) {
            return "600";
        }
        return d;
    }

    protected List<Object> c() {
        return d.c("amplify_video_bitrate_buckets");
    }

    protected String d() {
        return d.b("amplify_video_bitrate_default");
    }
}
