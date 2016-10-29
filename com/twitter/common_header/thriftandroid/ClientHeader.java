package com.twitter.common_header.thriftandroid;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.thrift.TBase;
import org.apache.thrift.TException;
import org.apache.thrift.d;
import org.apache.thrift.meta_data.FieldMetaData;
import org.apache.thrift.meta_data.FieldValueMetaData;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.e;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ClientHeader implements Serializable, Cloneable, TBase<ClientHeader, _Fields> {
    public static final Map<_Fields, FieldMetaData> a;
    public static final _Fields b;
    public static final _Fields c;
    private static final e d;
    private static final a e;
    private static final a f;
    private BitSet __isset_bit_vector;
    private long timestampMs;
    private short timezoneOffsetMin;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        TIMESTAMP_MS((short) 1, "timestampMs"),
        TIMEZONE_OFFSET_MIN((short) 2, "timezoneOffsetMin");
        
        private static final Map<String, _Fields> c;
        private final String _fieldName;
        private final short _thriftId;

        static {
            c = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_common_header_thriftandroid_ClientHeader__Fields = (_Fields) it.next();
                c.put(com_twitter_common_header_thriftandroid_ClientHeader__Fields.b(), com_twitter_common_header_thriftandroid_ClientHeader__Fields);
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
        return b((ClientHeader) obj);
    }

    static {
        d = new e("ClientHeader");
        e = new a("timestampMs", (byte) 10, (short) 1);
        f = new a("timezoneOffsetMin", (byte) 6, (short) 2);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.TIMESTAMP_MS, new FieldMetaData("timestampMs", (byte) 1, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.TIMEZONE_OFFSET_MIN, new FieldMetaData("timezoneOffsetMin", (byte) 2, new FieldValueMetaData((byte) 6)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(ClientHeader.class, a);
        b = _Fields.TIMESTAMP_MS;
        c = _Fields.TIMEZONE_OFFSET_MIN;
    }

    public ClientHeader() {
        this.__isset_bit_vector = new BitSet(2);
    }

    public ClientHeader(Long l, Short sh) {
        this();
        if (l != null) {
            this.timestampMs = l.longValue();
            this.__isset_bit_vector.set(0, true);
        }
        if (sh != null) {
            this.timezoneOffsetMin = sh.shortValue();
            this.__isset_bit_vector.set(1, true);
        }
    }

    public boolean a(_Fields com_twitter_common_header_thriftandroid_ClientHeader__Fields) {
        switch (a.a[com_twitter_common_header_thriftandroid_ClientHeader__Fields.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return this.__isset_bit_vector.get(0);
            case WireMessage.WIRE_CONTROL /*2*/:
                return this.__isset_bit_vector.get(1);
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ClientHeader)) {
            return a((ClientHeader) obj);
        }
        return false;
    }

    public boolean a(ClientHeader clientHeader) {
        if (clientHeader == null || this.timestampMs != clientHeader.timestampMs) {
            return false;
        }
        boolean a = a(_Fields.TIMEZONE_OFFSET_MIN);
        boolean a2 = clientHeader.a(_Fields.TIMEZONE_OFFSET_MIN);
        if ((a || a2) && (!a || !a2 || this.timezoneOffsetMin != clientHeader.timezoneOffsetMin)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode = Long.valueOf(this.timestampMs).hashCode() + 31;
        if (a(_Fields.TIMEZONE_OFFSET_MIN)) {
            return (hashCode * 31) + Short.valueOf(this.timezoneOffsetMin).hashCode();
        }
        return hashCode;
    }

    public int b(ClientHeader clientHeader) {
        if (!getClass().equals(clientHeader.getClass())) {
            return getClass().getName().compareTo(clientHeader.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.TIMESTAMP_MS)).compareTo(Boolean.valueOf(clientHeader.a(_Fields.TIMESTAMP_MS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.TIMESTAMP_MS)) {
            compareTo = org.apache.thrift.a.a(this.timestampMs, clientHeader.timestampMs);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.TIMEZONE_OFFSET_MIN)).compareTo(Boolean.valueOf(clientHeader.a(_Fields.TIMEZONE_OFFSET_MIN)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.TIMEZONE_OFFSET_MIN)) {
            compareTo = org.apache.thrift.a.a(this.timezoneOffsetMin, clientHeader.timezoneOffsetMin);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(d);
        dVar.a(e);
        dVar.a(this.timestampMs);
        dVar.b();
        if (a(_Fields.TIMEZONE_OFFSET_MIN)) {
            dVar.a(f);
            dVar.a(this.timezoneOffsetMin);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ClientHeader(");
        stringBuilder.append("timestampMs:");
        stringBuilder.append(this.timestampMs);
        if (a(_Fields.TIMEZONE_OFFSET_MIN)) {
            stringBuilder.append(", ");
            stringBuilder.append("timezoneOffsetMin:");
            stringBuilder.append(this.timezoneOffsetMin);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
    }
}
