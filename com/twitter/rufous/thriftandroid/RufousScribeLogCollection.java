package com.twitter.rufous.thriftandroid;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.thrift.TBase;
import org.apache.thrift.TException;
import org.apache.thrift.d;
import org.apache.thrift.meta_data.FieldMetaData;
import org.apache.thrift.meta_data.FieldValueMetaData;
import org.apache.thrift.meta_data.ListMetaData;
import org.apache.thrift.meta_data.MapMetaData;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.b;
import org.apache.thrift.protocol.c;
import org.apache.thrift.protocol.e;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class RufousScribeLogCollection implements Serializable, Cloneable, TBase<RufousScribeLogCollection, _Fields> {
    public static final Map<_Fields, FieldMetaData> a;
    public static final _Fields b;
    private static final e c;
    private static final a d;
    private Map<String, List<ByteBuffer>> logs;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        LOGS((short) 1, "logs");
        
        private static final Map<String, _Fields> b;
        private final String _fieldName;
        private final short _thriftId;

        static {
            b = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields = (_Fields) it.next();
                b.put(com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields.b(), com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields);
            }
        }

        private _Fields(short s, String str) {
            this._thriftId = s;
            this._fieldName = str;
        }

        public short a() {
            return this._thriftId;
        }

        public String b() {
            return this._fieldName;
        }
    }

    public /* synthetic */ int compareTo(Object obj) {
        return b((RufousScribeLogCollection) obj);
    }

    static {
        c = new e("RufousScribeLogCollection");
        d = new a("logs", (byte) 13, (short) 1);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.LOGS, new FieldMetaData("logs", (byte) 1, new MapMetaData((byte) 13, new FieldValueMetaData((byte) 11), new ListMetaData((byte) 15, new FieldValueMetaData((byte) 11)))));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(RufousScribeLogCollection.class, a);
        b = _Fields.LOGS;
    }

    public RufousScribeLogCollection(Map<String, List<ByteBuffer>> map) {
        this();
        if (map != null) {
            this.logs = map;
        }
    }

    public Object a(_Fields com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields) {
        switch (a.a[com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields.ordinal()]) {
            case p.View_android_focusable /*1*/:
                return this.logs;
            default:
                throw new IllegalStateException();
        }
    }

    public <Any> Any b(_Fields com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields) {
        switch (a.a[com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields.ordinal()]) {
            case p.View_android_focusable /*1*/:
                return (Map) a(com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields);
            default:
                throw new IllegalStateException("Invalid field type");
        }
    }

    public boolean c(_Fields com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields) {
        switch (a.a[com_twitter_rufous_thriftandroid_RufousScribeLogCollection__Fields.ordinal()]) {
            case p.View_android_focusable /*1*/:
                return this.logs != null;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof RufousScribeLogCollection)) {
            return a((RufousScribeLogCollection) obj);
        }
        return false;
    }

    public boolean a(RufousScribeLogCollection rufousScribeLogCollection) {
        if (rufousScribeLogCollection == null) {
            return false;
        }
        boolean c = c(_Fields.LOGS);
        boolean c2 = rufousScribeLogCollection.c(_Fields.LOGS);
        if ((c || c2) && (!c || !c2 || !this.logs.equals(rufousScribeLogCollection.logs))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        if (c(_Fields.LOGS)) {
            return this.logs.hashCode() + 31;
        }
        return 1;
    }

    public int b(RufousScribeLogCollection rufousScribeLogCollection) {
        if (!getClass().equals(rufousScribeLogCollection.getClass())) {
            return getClass().getName().compareTo(rufousScribeLogCollection.getClass().getName());
        }
        int compareTo = Boolean.valueOf(c(_Fields.LOGS)).compareTo(Boolean.valueOf(rufousScribeLogCollection.c(_Fields.LOGS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (c(_Fields.LOGS)) {
            compareTo = org.apache.thrift.a.a(this.logs, rufousScribeLogCollection.logs);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(c);
        if (this.logs != null) {
            dVar.a(d);
            dVar.a(new c((byte) 11, (byte) 15, this.logs.size()));
            for (Entry entry : this.logs.entrySet()) {
                dVar.a((String) entry.getKey());
                dVar.a(new b((byte) 11, ((List) entry.getValue()).size()));
                for (ByteBuffer a : (List) entry.getValue()) {
                    dVar.a(a);
                }
                dVar.e();
            }
            dVar.d();
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("RufousScribeLogCollection(");
        stringBuilder.append("logs:");
        if (this.logs == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.logs);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
        if (this.logs == null) {
            throw new TProtocolException("Required field 'logs' was not present! Struct: " + toString());
        }
    }
}
