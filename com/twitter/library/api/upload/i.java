package com.twitter.library.api.upload;

import android.content.Context;
import android.net.Uri;
import bbu;
import bmx;
import com.twitter.config.d;
import com.twitter.library.api.upload.internal.c;
import com.twitter.library.api.upload.internal.j;
import com.twitter.library.client.bg;
import com.twitter.library.network.forecaster.b;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.ab;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.platform.PlatformContext;
import com.twitter.platform.t;
import com.twitter.util.collection.n;
import com.twitter.util.collection.z;
import com.twitter.util.telephony.TelephonyUtil;
import java.util.List;

/* compiled from: Twttr */
public class i {
    private final Context a;
    private final ab b;

    public i(Context context, ab abVar) {
        this.a = context;
        this.b = abVar;
    }

    public l a(MediaFile mediaFile, List<z<String, String>> list, com.twitter.util.z<bmx> zVar, MediaUsage mediaUsage) {
        t a = PlatformContext.f().a();
        long b = a.b();
        l lVar = new l();
        j jVar = new j(this, a, b, lVar);
        new c(this.a, this.b, mediaFile, list, r3, zVar, mediaUsage, a(mediaFile.f)).a();
        return lVar;
    }

    public l a(Uri uri, MediaType mediaType, MediaUsage mediaUsage, com.twitter.util.z<bmx> zVar) {
        l lVar = new l();
        t a = PlatformContext.f().a();
        new j(this.a, this.b, uri, mediaType, mediaUsage, new k(this, a, a.b(), lVar), zVar).a();
        return lVar;
    }

    public static boolean a() {
        return d.a("media_async_upload_url_enabled");
    }

    static void a(h hVar, long j) {
        if (hVar.b != null && hVar.b.f == MediaType.b) {
            String str = hVar.b() ? "app:twitter_service:image_attachment:upload:success" : "app:twitter_service:image_attachment:upload:failure";
            int intValue = b.a().d().intValue();
            long length = hVar.b.d.length();
            bbu.a(((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(bg.a().c().g()).b(new String[]{str})).c(2)).d(String.format("%s=%s,%s=%s,%s=%s", new Object[]{"upload_kbps", Integer.valueOf(intValue), "file_size_bytes", Long.valueOf(length), "upload_duration_ms", Long.valueOf(j)})));
        }
    }

    private static List<Integer> a(MediaType mediaType) {
        int a;
        if (mediaType == MediaType.b) {
            a = d.a("photos_segmented_upload_maximum_segment_size", 0);
            if (a < 1024) {
                a = 51200;
            }
            return n.b(Integer.valueOf(a));
        } else if (mediaType == MediaType.d || mediaType == MediaType.f || mediaType == MediaType.c) {
            a = d.a("videos_segmented_upload_segment_size_wifi", 524288);
            int a2 = d.a("videos_segmented_upload_segment_size_cellular", 262144);
            boolean a3 = d.a("videos_segmented_upload_segment_size_backoff_policy_enabled", true);
            int a4 = d.a("videos_segmented_upload_minimum_segment_size", 65536);
            if (!TelephonyUtil.i().c()) {
                a = a2;
            }
            n d = n.d();
            if (a3) {
                while (a >= a4) {
                    d.c(Integer.valueOf(a));
                    a >>= 1;
                }
            } else {
                d.c(Integer.valueOf(a));
            }
            return (List) d.q();
        } else {
            throw new RuntimeException("Failed to upload unknown media type: " + mediaType.name());
        }
    }
}
