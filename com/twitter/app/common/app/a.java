package com.twitter.app.common.app;

import com.twitter.app.common.app.internal.an;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import defpackage.bbi;

/* compiled from: Twttr */
public abstract class a extends bbi implements b {
    public abstract o a(an anVar);

    public abstract void a(InjectedApplication injectedApplication);

    public static a a() {
        return (a) ObjectUtils.a(e.a(bbi.q()), a.class);
    }
}
