package com.twitter.library.av.model;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.CallSuper;
import android.support.annotation.StringRes;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.av.VideoCta;
import com.twitter.model.av.VideoCtaType;
import com.twitter.model.av.a;
import com.twitter.util.x;
import defpackage.bdc;

/* compiled from: Twttr */
public class f {
    private final a a;
    private final int b;
    private final int c;

    protected f(a aVar, @StringRes int i, @StringRes int i2) {
        this.a = aVar;
        this.b = i;
        this.c = i2;
    }

    public f(a aVar) {
        this(aVar, bdc.video_cta_download_app, bdc.video_cta_download_app_already_installed);
    }

    public Uri c() {
        String b = this.a != null ? this.a.b() : null;
        if (b != null) {
            return Uri.parse(b);
        }
        return null;
    }

    public Uri a(Context context) {
        if (this.a == null) {
            return null;
        }
        switch (g.a[this.a.a().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return Uri.parse(x.a(context, this.a.c()));
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
                return Uri.parse(this.a.b());
            default:
                return null;
        }
    }

    public String b(Context context) {
        String string = context.getString(bdc.video_cta_default_text);
        if (this.a == null) {
            return string;
        }
        switch (g.a[this.a.a().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return context.getString(this.b, new Object[]{this.a.d()});
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return context.getString(bdc.video_cta_open_url, new Object[]{d()});
            case Util.TYPE_OTHER /*3*/:
                return context.getString(bdc.video_cta_watch_now, new Object[]{d()});
            default:
                return context.getString(bdc.video_cta_default_text);
        }
    }

    public String c(Context context) {
        if (this.a == null || !this.a.a().equals(VideoCtaType.a)) {
            return b(context);
        }
        return context.getString(this.c, new Object[]{this.a.d()});
    }

    public String a(boolean z) {
        if (this.a == null) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        switch (g.a[this.a.a().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (z) {
                    return "cta_app_open_impression";
                }
                return "cta_app_install_impression";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "cta_url_impression";
            case Util.TYPE_OTHER /*3*/:
                return "cta_watch_impression";
            default:
                return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }

    public String b(boolean z) {
        if (this.a == null) {
            return TtmlNode.ANONYMOUS_REGION_ID;
        }
        switch (g.a[this.a.a().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (z) {
                    return "cta_app_open_click";
                }
                return "cta_app_install_click";
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return "cta_url_click";
            case Util.TYPE_OTHER /*3*/:
                return "cta_watch_click";
            default:
                return TtmlNode.ANONYMOUS_REGION_ID;
        }
    }

    String d() {
        String b = this.a != null ? this.a.b() : null;
        String str = TtmlNode.ANONYMOUS_REGION_ID;
        if (b != null) {
            return Uri.parse(b).getHost();
        }
        return str;
    }

    @CallSuper
    public boolean a() {
        return this.a != null && b();
    }

    protected boolean b() {
        return this.a instanceof VideoCta;
    }
}
