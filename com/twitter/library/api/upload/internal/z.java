package com.twitter.library.api.upload.internal;

import android.content.Context;
import android.net.Uri;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.upload.MediaUsage;
import com.twitter.library.api.upload.internal.BaseUploadRequest.BuilderInitException;
import com.twitter.library.service.ab;
import com.twitter.library.service.e;
import com.twitter.media.model.MediaFile;
import com.twitter.media.model.MediaType;
import com.twitter.util.ao;
import java.util.List;

/* compiled from: Twttr */
public class z extends ab {
    private final long c;
    private final List<com.twitter.util.collection.z<String, String>> h;
    private final MediaUsage i;

    public z(Context context, ab abVar, MediaFile mediaFile, long j, List<com.twitter.util.collection.z<String, String>> list, MediaUsage mediaUsage, boolean z) {
        super(context, "segmented_upload_init", abVar, mediaFile, z);
        this.c = j;
        this.h = list;
        this.i = mediaUsage;
    }

    protected z(Context context, ab abVar, Uri uri, MediaType mediaType, MediaUsage mediaUsage) {
        super(context, "segmented_upload_init_uri", abVar, uri, mediaType, true);
        this.i = mediaUsage;
        this.c = 0;
        this.h = null;
    }

    protected void a(e eVar) throws BuilderInitException {
        eVar.a(RequestMethod.b);
        if (this.h != null) {
            for (com.twitter.util.collection.z zVar : this.h) {
                eVar.b((String) zVar.a(), (String) zVar.b());
            }
        }
        if (this.g) {
            eVar.a("command", "INIT").a("total_bytes", this.c);
            eVar.a("media_type", this.b.mimeType);
            String a = a(this.b, this.i);
            if (a != null) {
                eVar.a("media_category", a);
            }
            if (ao.e(this.a)) {
                eVar.a("source_url", this.a.toString());
                return;
            }
            return;
        }
        eVar.b("X-SessionPhase", "INIT").b("X-TotalBytes", Long.toString(this.c));
    }

    private static String a(MediaType mediaType, MediaUsage mediaUsage) {
        switch (aa.a[mediaType.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return mediaUsage == MediaUsage.DM ? "dm_video" : "tweet_video";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return mediaUsage == MediaUsage.DM ? "dm_gif" : "tweet_gif";
            default:
                return null;
        }
    }
}
