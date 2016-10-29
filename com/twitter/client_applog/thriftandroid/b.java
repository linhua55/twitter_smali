package com.twitter.client_applog.thriftandroid;

import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.client_applog.thriftandroid.ClientAppLogUpload._Fields;
import com.twitter.client_network.thriftandroid.ClientNetworkRequest;
import com.twitter.common_header.thriftandroid.VersionedCommonHeader;

/* compiled from: Twttr */
public class b {
    private VersionedCommonHeader a;
    private ClientNetworkRequest b;
    private String c;
    private String d;
    private String e;
    private String f;

    public b a(_Fields com_twitter_client_applog_thriftandroid_ClientAppLogUpload__Fields, Object obj) {
        switch (a.a[com_twitter_client_applog_thriftandroid_ClientAppLogUpload__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (obj != null) {
                    this.a = (VersionedCommonHeader) obj;
                    break;
                }
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (obj != null) {
                    this.b = (ClientNetworkRequest) obj;
                    break;
                }
                break;
            case Util.TYPE_OTHER /*3*/:
                if (obj != null) {
                    this.c = (String) obj;
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
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (obj != null) {
                    this.f = (String) obj;
                    break;
                }
                break;
        }
        return this;
    }

    public ClientAppLogUpload a() {
        if (this.a != null) {
            return new ClientAppLogUpload(this.a, this.b, this.c, this.d, this.e, this.f);
        }
        throw new IllegalArgumentException("Required field 'commonHeader' was not present! Struct: " + toString());
    }
}
