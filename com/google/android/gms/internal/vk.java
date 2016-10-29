package com.google.android.gms.internal;

import android.support.v4.util.ArrayMap;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class vk {
    public static <K, V> Map<K, V> a(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6) {
        ArrayMap arrayMap = new ArrayMap(6);
        arrayMap.put(k, v);
        arrayMap.put(k2, v2);
        arrayMap.put(k3, v3);
        arrayMap.put(k4, v4);
        arrayMap.put(k5, v5);
        arrayMap.put(k6, v6);
        return Collections.unmodifiableMap(arrayMap);
    }

    public static <T> Set<T> a() {
        return Collections.emptySet();
    }

    public static <T> Set<T> a(T t) {
        return Collections.singleton(t);
    }

    public static <T> Set<T> a(T t, T t2) {
        Set vfVar = new vf(2);
        vfVar.add(t);
        vfVar.add(t2);
        return Collections.unmodifiableSet(vfVar);
    }

    public static <T> Set<T> a(T t, T t2, T t3) {
        Set vfVar = new vf(3);
        vfVar.add(t);
        vfVar.add(t2);
        vfVar.add(t3);
        return Collections.unmodifiableSet(vfVar);
    }

    public static <T> Set<T> a(T t, T t2, T t3, T t4) {
        Set vfVar = new vf(4);
        vfVar.add(t);
        vfVar.add(t2);
        vfVar.add(t3);
        vfVar.add(t4);
        return Collections.unmodifiableSet(vfVar);
    }

    public static <T> Set<T> a(T... tArr) {
        switch (tArr.length) {
            case Util.TYPE_DASH /*0*/:
                return a();
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return a(tArr[0]);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return a(tArr[0], tArr[1]);
            case Util.TYPE_OTHER /*3*/:
                return a(tArr[0], tArr[1], tArr[2]);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return a(tArr[0], tArr[1], tArr[2], tArr[3]);
            default:
                return Collections.unmodifiableSet(tArr.length <= 32 ? new vf(Arrays.asList(tArr)) : new HashSet(Arrays.asList(tArr)));
        }
    }
}
