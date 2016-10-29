package com.twitter.platform;

import com.twitter.util.network.c;
import com.twitter.util.y;
import defpackage.aob;
import defpackage.bbi;
import defpackage.cwf;
import defpackage.cwj;

@aob
/* compiled from: Twttr */
public abstract class PlatformContext {
    private static PlatformContext a;

    public abstract t a();

    public abstract q b();

    public abstract y<p> c();

    public abstract c d();

    public abstract o e();

    public static PlatformContext f() {
        if (bbi.r()) {
            return bbi.q().k();
        }
        if (a != null) {
            return a;
        }
        if (cwj.b()) {
            PlatformContext platformContext = (PlatformContext) cwf.a().c(PlatformContext.class);
            if (platformContext != null) {
                return platformContext;
            }
        }
        throw new IllegalStateException("A default context has not been set");
    }
}
