package com.twitter.library.api.search;

import android.content.Context;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.library.client.Session;
import com.twitter.library.provider.di;
import com.twitter.library.service.o;
import java.util.Collection;

/* compiled from: Twttr */
public class e extends o {
    private static final int[] g;
    public long a;
    public Collection<Long> b;
    public String c;

    static {
        g = new int[]{1, 2, 3, 4};
    }

    public e(Context context, Session session) {
        super(context, e.class.getName(), session, g);
        this.a = 0;
    }

    protected void a() {
        com.twitter.library.provider.e t;
        switch (u()) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.a != 0) {
                    t = t();
                    s().c(this.a, t);
                    t.a();
                }
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                t = t();
                s().a(this.c, t);
                t.a();
            case Util.TYPE_OTHER /*3*/:
                t = t();
                di s = s();
                s.a(6, "TRENDSPLUS", false, t);
                s.a(t);
                t.a();
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (this.b != null) {
                    s().a(this.b, null, 6);
                }
            default:
        }
    }
}
