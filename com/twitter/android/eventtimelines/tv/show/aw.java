package com.twitter.android.eventtimelines.tv.show;

import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.eventtimelines.a;
import com.twitter.util.object.ObjectUtils;
import java.net.URI;

/* compiled from: Twttr */
public class aw {
    public static final aw a;
    public final URI b;
    public final String c;
    public final String d;
    public final String e;
    public final a f;
    public final String g;
    public final long h;

    static {
        a = (aw) new ax().a(URI.create(BuildConfig.VERSION_NAME)).b(BuildConfig.VERSION_NAME).c(BuildConfig.VERSION_NAME).a(a.a).a(-1).d(BuildConfig.VERSION_NAME).q();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        aw awVar = (aw) obj;
        if (this.h == awVar.h && ObjectUtils.a(this.b, awVar.b) && ObjectUtils.a(this.c, awVar.c) && ObjectUtils.a(this.d, awVar.d) && ObjectUtils.a(this.e, awVar.e) && ObjectUtils.a(this.f, awVar.f)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "TvShowViewModel{composerConfiguration=" + this.f + ", headerImageUri=" + this.b + ", title='" + this.c + '\'' + ", genre='" + this.d + '\'' + ", primaryHashtag='" + this.e + '\'' + ", id=" + this.h + '}';
    }

    public int hashCode() {
        return ObjectUtils.a(this.b, this.c, this.d, this.e, this.f, Long.valueOf(this.h));
    }

    aw(long j, URI uri, String str, String str2, String str3, a aVar, String str4) {
        this.h = j;
        this.b = uri;
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = aVar;
        this.g = str4;
    }
}
