package com.twitter.library.api.upload;

import android.content.Context;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.config.c;
import com.twitter.library.api.upload.internal.ae;
import com.twitter.media.model.ImageFile;
import com.twitter.media.model.MediaFile;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.collection.z;
import defpackage.cdr;
import java.util.Collection;

/* compiled from: Twttr */
public class e {
    private static final ae a;
    private static final int[] b;
    private static final int[] c;
    private static final int[] d;
    private static final int[] e;
    private static e f;

    static {
        a = new ae();
        b = new int[]{80, 80, 80};
        c = new int[]{400, Callback.DEFAULT_DRAG_ANIMATION_DURATION, Callback.DEFAULT_DRAG_ANIMATION_DURATION};
        d = new int[]{80, 80, 80};
        e = new int[]{1500, 1500, 1500};
        f = new e();
    }

    public d a(Context context, MediaFile mediaFile, MediaUsage mediaUsage, long j) {
        int i = 3145728;
        switch (f.b[mediaFile.f.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                int[] iArr;
                int[] iArr2;
                boolean z = false;
                switch (f.a[mediaUsage.ordinal()]) {
                    case ModuleDescriptor.MODULE_VERSION /*1*/:
                        i = 716800;
                        iArr = b;
                        iArr2 = c;
                        break;
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        iArr = d;
                        iArr2 = e;
                        break;
                    default:
                        boolean a = a();
                        z a2 = a.a();
                        iArr = CollectionUtils.d((Collection) a2.a());
                        iArr2 = CollectionUtils.d((Collection) a2.b());
                        z = a;
                        break;
                }
                if (!z) {
                    i = cdr.a().a(i);
                }
                return new b(context, iArr2, iArr, i, (ImageFile) mediaFile, j);
            default:
                return new m(mediaFile);
        }
    }

    private static boolean a() {
        return c.b("android_high_upload_photo_limit").equals("no_upper_upload_limit");
    }

    public static d b(Context context, MediaFile mediaFile, MediaUsage mediaUsage, long j) {
        return f.a(context, mediaFile, mediaUsage, j);
    }
}
