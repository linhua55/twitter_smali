package com.twitter.clientapp.thriftandroid;

import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.clientapp.thriftandroid.ExperimentDetails._Fields;

/* compiled from: Twttr */
public class b {
    private String a;
    private String b;
    private Integer c;
    private String d;
    private String e;

    public b a(_Fields com_twitter_clientapp_thriftandroid_ExperimentDetails__Fields, Object obj) {
        switch (a.a[com_twitter_clientapp_thriftandroid_ExperimentDetails__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (obj != null) {
                    this.a = (String) obj;
                    break;
                }
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (obj != null) {
                    this.b = (String) obj;
                    break;
                }
                break;
            case Util.TYPE_OTHER /*3*/:
                if (obj != null) {
                    this.c = (Integer) obj;
                    break;
                }
                break;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (obj != null) {
                    this.d = (String) obj;
                    break;
                }
                break;
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (obj != null) {
                    this.e = (String) obj;
                    break;
                }
                break;
        }
        return this;
    }

    public ExperimentDetails a() {
        return new ExperimentDetails(this.a, this.b, this.c, this.d, this.e);
    }
}
