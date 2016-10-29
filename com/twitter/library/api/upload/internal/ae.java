package com.twitter.library.api.upload.internal;

import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.d;
import com.twitter.library.network.forecaster.b;
import com.twitter.util.collection.z;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
public class ae {
    private final b a;

    public ae() {
        this(b.a());
    }

    public ae(b bVar) {
        this.a = bVar;
    }

    public z<List<Integer>, List<Integer>> a() {
        int[] b = b();
        int[] c = c();
        return z.a(Arrays.asList(new Integer[]{Integer.valueOf(b[0]), Integer.valueOf(b[0]), Integer.valueOf(b[1])}), Arrays.asList(new Integer[]{Integer.valueOf(c[0]), Integer.valueOf(c[1]), Integer.valueOf(c[1])}));
    }

    private int[] b() {
        int[] iArr = new int[2];
        switch (af.a[this.a.b().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                iArr[0] = d.a("photo_upload_great_default_quality", 85);
                iArr[1] = d.a("photo_upload_great_fallback_quality", 75);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                iArr[0] = d.a("photo_upload_good_default_quality", 85);
                iArr[1] = d.a("photo_upload_good_fallback_quality", 75);
                break;
            default:
                iArr[0] = d.a("photo_upload_poor_default_quality", 75);
                iArr[1] = d.a("photo_upload_poor_fallback_quality", 75);
                break;
        }
        return iArr;
    }

    private int[] c() {
        int[] iArr = new int[2];
        switch (af.a[this.a.b().ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                iArr[0] = d.a("photo_upload_great_default_resolution", 2048);
                iArr[1] = d.a("photo_upload_great_fallback_resolution", 1024);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                iArr[0] = d.a("photo_upload_good_default_resolution", 2048);
                iArr[1] = d.a("photo_upload_good_fallback_resolution", 1024);
                break;
            default:
                iArr[0] = d.a("photo_upload_poor_default_resolution", 1024);
                iArr[1] = d.a("photo_upload_poor_fallback_resolution", 1024);
                break;
        }
        return iArr;
    }
}
