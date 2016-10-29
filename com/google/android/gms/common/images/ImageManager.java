package com.google.android.gms.common.images;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.vd;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public final class ImageManager {
    private static final Object a;
    private static HashSet<Uri> b;
    private final Context c;
    private final Handler d;
    private final ExecutorService e;
    private final b f;
    private final vd g;
    private final Map<e, ImageReceiver> h;
    private final Map<Uri, ImageReceiver> i;
    private final Map<Uri, Long> j;

    @KeepName
    final class ImageReceiver extends ResultReceiver {
        final /* synthetic */ ImageManager a;
        private final Uri b;
        private final ArrayList<e> c;

        public void onReceiveResult(int i, Bundle bundle) {
            this.a.e.execute(new c(this.a, this.b, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    static {
        a = new Object();
        b = new HashSet();
    }
}
