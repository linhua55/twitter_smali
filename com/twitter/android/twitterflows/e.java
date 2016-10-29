package com.twitter.android.twitterflows;

import android.os.Bundle;
import android.os.Parcelable;
import defpackage.bbn;
import flow.s;

/* compiled from: Twttr */
public final class e implements s {
    public Parcelable a(Object obj) {
        Parcelable bundle = new Bundle();
        bundle.putString("state_class_name", obj.getClass().getName());
        return bundle;
    }

    public Object a(Parcelable parcelable) {
        try {
            return Class.forName(((Bundle) parcelable).getString("state_class_name")).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }
}
