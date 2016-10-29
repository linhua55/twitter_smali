package com.twitter.util;

import android.os.Parcel;
import com.twitter.util.collection.ImmutableList;
import com.twitter.util.collection.r;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public class q extends k {
    public static void a(Parcel parcel, Map<String, String> map) {
        byte b = (byte) 1;
        Object obj = map != null ? (byte) 1 : null;
        if (obj == null) {
            b = (byte) 0;
        }
        parcel.writeByte(b);
        if (obj != null) {
            parcel.writeInt(map.size());
            for (Entry entry : map.entrySet()) {
                parcel.writeString((String) entry.getKey());
                parcel.writeString((String) entry.getValue());
            }
        }
    }

    public static Map<String, String> a(Parcel parcel) {
        int i = 1;
        int i2 = 0;
        if (parcel.readByte() != (byte) 1) {
            i = 0;
        }
        if (i == 0) {
            return null;
        }
        r d = r.d();
        int readInt = parcel.readInt();
        while (i2 < readInt) {
            d.b(parcel.readString(), parcel.readString());
            i2++;
        }
        return (Map) d.q();
    }

    public static void b(Parcel parcel, Map<String, List<String>> map) {
        byte b = (byte) 1;
        Object obj = map != null ? (byte) 1 : null;
        if (obj == null) {
            b = (byte) 0;
        }
        parcel.writeByte(b);
        if (obj != null) {
            parcel.writeInt(map.size());
            for (Entry entry : map.entrySet()) {
                parcel.writeString((String) entry.getKey());
                parcel.writeStringList((List) entry.getValue());
            }
        }
    }

    public static Map<String, List<String>> b(Parcel parcel) {
        int i = 1;
        int i2 = 0;
        if (parcel.readByte() != (byte) 1) {
            i = 0;
        }
        if (i == 0) {
            return null;
        }
        r d = r.d();
        int readInt = parcel.readInt();
        while (i2 < readInt) {
            String readString = parcel.readString();
            List arrayList = new ArrayList();
            parcel.readStringList(arrayList);
            d.b(readString, ImmutableList.a(arrayList));
            i2++;
        }
        return (Map) d.q();
    }
}
