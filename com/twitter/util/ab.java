package com.twitter.util;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.twitter.util.serialization.m;
import com.twitter.util.serialization.n;
import defpackage.bbl;
import defpackage.bbn;

/* compiled from: Twttr */
public class ab {
    public static void a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static Boolean a(Parcel parcel) {
        return Boolean.valueOf(parcel.readInt() > 0);
    }

    public static boolean a(Intent intent) {
        try {
            Bundle extras = intent.getExtras();
            if (extras == null || extras.size() > -1) {
                return true;
            }
            return false;
        } catch (Throwable e) {
            bbn.a(new bbl().a(e));
            return false;
        }
    }

    public static <T> void a(Parcel parcel, T t, n<T> nVar) {
        byte[] a = m.a((Object) t, (n) nVar);
        parcel.writeInt(a.length);
        parcel.writeByteArray(a);
    }

    public static <T> T a(Parcel parcel, n<T> nVar) {
        byte[] bArr = new byte[parcel.readInt()];
        parcel.readByteArray(bArr);
        return m.a(bArr, (n) nVar);
    }

    public static <T> Bundle a(Bundle bundle, String str, T t, n<T> nVar) {
        bundle.putByteArray(str, m.a((Object) t, (n) nVar));
        return bundle;
    }

    public static <T> T a(Bundle bundle, String str, n<T> nVar) {
        return m.a(bundle.getByteArray(str), (n) nVar);
    }

    public static <T> Intent a(Intent intent, String str, T t, n<T> nVar) {
        intent.putExtra(str, m.a((Object) t, (n) nVar));
        return intent;
    }

    public static <T> T a(Intent intent, String str, n<T> nVar) {
        return m.a(intent.getByteArrayExtra(str), (n) nVar);
    }
}
