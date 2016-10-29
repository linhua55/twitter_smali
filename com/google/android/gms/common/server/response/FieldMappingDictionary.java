package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class FieldMappingDictionary implements SafeParcelable {
    public static final d CREATOR;
    private final int a;
    private final HashMap<String, Map<String, Field<?, ?>>> b;
    private final ArrayList<Entry> c;
    private final String d;

    public class Entry implements SafeParcelable {
        public static final e CREATOR;
        final int a;
        final String b;
        final ArrayList<FieldMapPair> c;

        static {
            CREATOR = new e();
        }

        Entry(int i, String str, ArrayList<FieldMapPair> arrayList) {
            this.a = i;
            this.b = str;
            this.c = arrayList;
        }

        Entry(String str, Map<String, Field<?, ?>> map) {
            this.a = 1;
            this.b = str;
            this.c = a(map);
        }

        private static ArrayList<FieldMapPair> a(Map<String, Field<?, ?>> map) {
            if (map == null) {
                return null;
            }
            ArrayList<FieldMapPair> arrayList = new ArrayList();
            for (String str : map.keySet()) {
                arrayList.add(new FieldMapPair(str, (Field) map.get(str)));
            }
            return arrayList;
        }

        HashMap<String, Field<?, ?>> a() {
            HashMap<String, Field<?, ?>> hashMap = new HashMap();
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                FieldMapPair fieldMapPair = (FieldMapPair) this.c.get(i);
                hashMap.put(fieldMapPair.b, fieldMapPair.c);
            }
            return hashMap;
        }

        public int describeContents() {
            e eVar = CREATOR;
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            e eVar = CREATOR;
            e.a(this, parcel, i);
        }
    }

    public class FieldMapPair implements SafeParcelable {
        public static final c CREATOR;
        final int a;
        final String b;
        final Field<?, ?> c;

        static {
            CREATOR = new c();
        }

        FieldMapPair(int i, String str, Field<?, ?> field) {
            this.a = i;
            this.b = str;
            this.c = field;
        }

        FieldMapPair(String str, Field<?, ?> field) {
            this.a = 1;
            this.b = str;
            this.c = field;
        }

        public int describeContents() {
            c cVar = CREATOR;
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            c cVar = CREATOR;
            c.a(this, parcel, i);
        }
    }

    static {
        CREATOR = new d();
    }

    FieldMappingDictionary(int i, ArrayList<Entry> arrayList, String str) {
        this.a = i;
        this.c = null;
        this.b = a((ArrayList) arrayList);
        this.d = (String) bm.a(str);
        a();
    }

    private static HashMap<String, Map<String, Field<?, ?>>> a(ArrayList<Entry> arrayList) {
        HashMap<String, Map<String, Field<?, ?>>> hashMap = new HashMap();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Entry entry = (Entry) arrayList.get(i);
            hashMap.put(entry.b, entry.a());
        }
        return hashMap;
    }

    public Map<String, Field<?, ?>> a(String str) {
        return (Map) this.b.get(str);
    }

    public void a() {
        for (String str : this.b.keySet()) {
            Map map = (Map) this.b.get(str);
            for (String str2 : map.keySet()) {
                ((Field) map.get(str2)).a(this);
            }
        }
    }

    int b() {
        return this.a;
    }

    ArrayList<Entry> c() {
        ArrayList<Entry> arrayList = new ArrayList();
        for (String str : this.b.keySet()) {
            arrayList.add(new Entry(str, (Map) this.b.get(str)));
        }
        return arrayList;
    }

    public String d() {
        return this.d;
    }

    public int describeContents() {
        d dVar = CREATOR;
        return 0;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        for (String str : this.b.keySet()) {
            stringBuilder.append(str).append(":\n");
            Map map = (Map) this.b.get(str);
            for (String str2 : map.keySet()) {
                stringBuilder.append("  ").append(str2).append(": ");
                stringBuilder.append(map.get(str2));
            }
        }
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        d dVar = CREATOR;
        d.a(this, parcel, i);
    }
}
