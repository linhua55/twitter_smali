package com.twitter.media.service.core;

import android.os.Bundle;
import bbn;
import com.twitter.util.aj;

/* compiled from: Twttr */
class c implements h {
    final /* synthetic */ MediaServiceClient a;

    c(MediaServiceClient mediaServiceClient) {
        this.a = mediaServiceClient;
    }

    public void a(int i, Bundle bundle) {
        if (bundle != null) {
            Object string = bundle.getString("crash");
            if (aj.b(string)) {
                bbn.a(new NativeCrashException(string));
            }
        }
    }
}
