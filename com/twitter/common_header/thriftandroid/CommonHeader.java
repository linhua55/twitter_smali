package com.twitter.common_header.thriftandroid;

import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.thrift.TException;
import org.apache.thrift.TUnion;
import org.apache.thrift.d;
import org.apache.thrift.meta_data.FieldMetaData;
import org.apache.thrift.meta_data.StructMetaData;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.e;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class CommonHeader extends TUnion<CommonHeader, _Fields> {
    public static final Map<_Fields, FieldMetaData> a;
    public static final _Fields b;
    public static final _Fields c;
    private static final e d;
    private static final a e;
    private static final a f;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        CLIENT_HEADER((short) 1, "clientHeader"),
        SERVER_HEADER((short) 2, "serverHeader");
        
        private static final Map<String, _Fields> c;
        private final String _fieldName;
        private final short _thriftId;

        static {
            c = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_common_header_thriftandroid_CommonHeader__Fields = (_Fields) it.next();
                c.put(com_twitter_common_header_thriftandroid_CommonHeader__Fields.b(), com_twitter_common_header_thriftandroid_CommonHeader__Fields);
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
        return b((CommonHeader) obj);
    }

    static {
        d = new e("CommonHeader");
        e = new a("clientHeader", (byte) 12, (short) 1);
        f = new a("serverHeader", (byte) 12, (short) 2);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.CLIENT_HEADER, new FieldMetaData("clientHeader", (byte) 3, new StructMetaData((byte) 12, ClientHeader.class)));
        enumMap.put(_Fields.SERVER_HEADER, new FieldMetaData("serverHeader", (byte) 3, new StructMetaData((byte) 12, ServerHeader.class)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(CommonHeader.class, a);
        b = _Fields.CLIENT_HEADER;
        c = _Fields.SERVER_HEADER;
    }

    protected void a(_Fields com_twitter_common_header_thriftandroid_CommonHeader__Fields, Object obj) throws ClassCastException {
        switch (c.a[com_twitter_common_header_thriftandroid_CommonHeader__Fields.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (!(obj instanceof ClientHeader)) {
                    throw new ClassCastException("Was expecting value of type ClientHeader for field 'clientHeader', but got " + obj.getClass().getSimpleName());
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (!(obj instanceof ServerHeader)) {
                    throw new ClassCastException("Was expecting value of type ServerHeader for field 'serverHeader', but got " + obj.getClass().getSimpleName());
                }
            default:
                throw new IllegalArgumentException("Unknown field id " + com_twitter_common_header_thriftandroid_CommonHeader__Fields);
        }
    }

    protected void b(org.apache.thrift.protocol.d dVar) throws TException {
        switch (c.a[((_Fields) this.setField_).ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                ((ClientHeader) this.value_).a(dVar);
            case WireMessage.WIRE_CONTROL /*2*/:
                ((ServerHeader) this.value_).a(dVar);
            default:
                throw new IllegalStateException("Cannot write union with unknown field " + this.setField_);
        }
    }

    protected a a(_Fields com_twitter_common_header_thriftandroid_CommonHeader__Fields) {
        switch (c.a[com_twitter_common_header_thriftandroid_CommonHeader__Fields.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return e;
            case WireMessage.WIRE_CONTROL /*2*/:
                return f;
            default:
                throw new IllegalArgumentException("Unknown field id " + com_twitter_common_header_thriftandroid_CommonHeader__Fields);
        }
    }

    protected e a() {
        return d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof CommonHeader) {
            return a((CommonHeader) obj);
        }
        return false;
    }

    public boolean a(CommonHeader commonHeader) {
        return commonHeader != null && b() == commonHeader.b() && c().equals(commonHeader.c());
    }

    public int b(CommonHeader commonHeader) {
        int a = org.apache.thrift.a.a((Comparable) b(), (Comparable) commonHeader.b());
        if (a == 0) {
            return org.apache.thrift.a.a(c(), commonHeader.c());
        }
        return a;
    }

    public int hashCode() {
        int hashCode = getClass().getName().hashCode();
        d b = b();
        if (b == null) {
            return hashCode;
        }
        short a = b.a();
        hashCode = (hashCode * 31) + a;
        if ((short) 1 == a && b(_Fields.CLIENT_HEADER)) {
            hashCode = ((ClientHeader) c()).hashCode() + (hashCode * 31);
        }
        if ((short) 2 != a || !b(_Fields.SERVER_HEADER)) {
            return hashCode;
        }
        return ((ServerHeader) c()).hashCode() + (hashCode * 31);
    }
}
