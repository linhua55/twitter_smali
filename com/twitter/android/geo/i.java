package com.twitter.android.geo;

import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: Twttr */
public class i {
    private final PlacePickerModel a;
    private final PlacePickerModel$PlaceListSource b;
    private final String c;

    public i(PlacePickerModel placePickerModel, PlacePickerModel$PlaceListSource placePickerModel$PlaceListSource) {
        this(placePickerModel, placePickerModel$PlaceListSource, null);
    }

    public i(PlacePickerModel placePickerModel, PlacePickerModel$PlaceListSource placePickerModel$PlaceListSource, String str) {
        this.a = placePickerModel;
        this.b = placePickerModel$PlaceListSource;
        this.c = str;
    }

    public static i a(i iVar, String str) {
        return new i(iVar.a, iVar.b, str);
    }

    public List<TwitterPlace> a() {
        f a = this.a.a(this.b);
        if (a == null) {
            return n.g();
        }
        int i;
        List arrayList = new ArrayList(a.c());
        switch (j.a[this.b.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                i = 25;
                arrayList = b(arrayList);
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                i = 30;
                break;
            default:
                throw new IllegalStateException("Illegal source: " + this.b);
        }
        String str = this.c;
        if (aj.b(str)) {
            arrayList = a(arrayList, str);
        }
        return a(a(arrayList), i);
    }

    public PlacePickerModel$PlaceListSource b() {
        return this.b;
    }

    private List<TwitterPlace> a(List<TwitterPlace> list, int i) {
        if (list.size() > i) {
            return list.subList(0, i);
        }
        return list;
    }

    private List<TwitterPlace> a(List<TwitterPlace> list) {
        if (this.a.c().c()) {
            int indexOf = list.indexOf(this.a.c().e());
            if (indexOf >= 0) {
                list.add(0, list.remove(indexOf));
            }
        }
        return list;
    }

    private List<TwitterPlace> b(List<TwitterPlace> list) {
        if (this.a.c().c()) {
            TwitterPlace e = this.a.c().e();
            if (!list.contains(e)) {
                list.add(0, e);
            }
        }
        return list;
    }

    private List<TwitterPlace> a(List<TwitterPlace> list, String str) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!a(str, ((TwitterPlace) it.next()).d)) {
                it.remove();
            }
        }
        return list;
    }

    private static boolean a(String str, String str2) {
        return str2 != null && aj.b(str2).toLowerCase().contains(aj.b(str).toLowerCase());
    }
}
