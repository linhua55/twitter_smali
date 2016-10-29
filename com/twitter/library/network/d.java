package com.twitter.library.network;

import com.google.android.exoplayer.util.MimeTypes;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.k;
import com.twitter.library.network.DataUsageEvent.Type;
import com.twitter.util.object.e;
import java.net.URI;

/* compiled from: Twttr */
public class d implements c {
    private final boolean a;
    private final String b;

    public d(boolean z, String str) {
        this.a = z;
        this.b = str;
    }

    public DataUsageEvent a(boolean z, HttpOperation httpOperation) {
        Type type;
        k kVar = (k) e.a(httpOperation.l());
        long j = kVar.i;
        long f = httpOperation.f();
        URI i = httpOperation.i();
        String host = i.getHost();
        String str = kVar.l;
        if (str != null && str.startsWith("image")) {
            type = Type.IMAGE;
        } else if ("api.twitter.com".equals(host) || "mobile.twitter.com".equals(host)) {
            type = Type.API;
        } else if (str == null || !str.startsWith(MimeTypes.BASE_TYPE_VIDEO)) {
            type = Type.UNKNOWN;
        } else {
            type = Type.VIDEO;
        }
        return new DataUsageEvent(type, i, this.b, this.a, z, j, f);
    }
}
