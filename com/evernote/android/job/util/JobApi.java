package com.evernote.android.job.util;

import android.content.Context;
import android.os.Build.VERSION;
import com.evernote.android.job.j;
import com.evernote.android.job.v21.a;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public enum JobApi {
    V_21,
    V_14,
    GCM;
    
    private j mCachedProxy;

    public boolean a(Context context) {
        switch (c.a[ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (VERSION.SDK_INT >= 21) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return true;
            case Util.TYPE_OTHER /*3*/:
                return b.a(context);
            default:
                throw new IllegalStateException("not implemented");
        }
    }

    public j b(Context context) {
        switch (c.a[ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return new a(context);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return new com.evernote.android.job.v14.a(context);
            case Util.TYPE_OTHER /*3*/:
                return new com.evernote.android.job.gcm.a(context);
            default:
                throw new IllegalStateException("not implemented");
        }
    }

    public synchronized j c(Context context) {
        if (this.mCachedProxy == null) {
            this.mCachedProxy = b(context);
        }
        return this.mCachedProxy;
    }

    public static JobApi d(Context context) {
        if (V_21.a(context)) {
            return V_21;
        }
        if (GCM.a(context)) {
            return GCM;
        }
        return V_14;
    }
}
