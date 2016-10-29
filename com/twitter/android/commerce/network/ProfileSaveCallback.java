package com.twitter.android.commerce.network;

import android.os.Bundle;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class ProfileSaveCallback extends z {
    private final WeakReference<j> a;
    private final RequestType b;
    private boolean c;

    /* compiled from: Twttr */
    public enum RequestType {
        ADDRESS_AND_SIGNATURE,
        PROFILE
    }

    public ProfileSaveCallback(j jVar, RequestType requestType) {
        this.a = new WeakReference(jVar);
        this.b = requestType;
    }

    public void a(x xVar) {
        Object obj = 1;
        if (!this.c) {
            aa aaVar = (aa) xVar.l().b();
            Bundle bundle = aaVar.c.getBundle("commerce_error_list_bundle");
            j jVar = (j) this.a.get();
            if (jVar != null && !jVar.isFinishing()) {
                if (this.b == RequestType.ADDRESS_AND_SIGNATURE) {
                    if (bundle == null) {
                        obj = null;
                    }
                    if (obj != null) {
                        jVar.e(bundle);
                        return;
                    } else {
                        jVar.c(aaVar.c.getBundle("address_signature_bundle"));
                        return;
                    }
                }
                Object obj2;
                Bundle bundle2 = aaVar.c.getBundle("store_profile_bundle");
                if (bundle2 == null || !(bundle2 == null || bundle2.getBoolean("storeprofile_bundle_success"))) {
                    obj2 = 1;
                } else {
                    obj2 = null;
                }
                if (obj2 != null) {
                    jVar.f(bundle);
                } else {
                    jVar.d(bundle2);
                }
            }
        }
    }
}
