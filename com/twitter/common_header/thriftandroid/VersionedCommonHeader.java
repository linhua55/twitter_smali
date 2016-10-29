package com.twitter.common_header.thriftandroid;

import com.twitter.logbase.thriftandroid.LogBase;
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
public class VersionedCommonHeader extends TUnion<VersionedCommonHeader, _Fields> {
    public static final Map<_Fields, FieldMetaData> a;
    public static final _Fields b;
    public static final _Fields c;
    private static final e d;
    private static final a e;
    private static final a f;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        LOG_BASE((short) 1, "log_base"),
        COMMON_HEADER((short) 2, "commonHeader");
        
        private static final Map<String, _Fields> c;
        private final String _fieldName;
        private final short _thriftId;

        static {
            c = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_common_header_thriftandroid_VersionedCommonHeader__Fields = (_Fields) it.next();
                c.put(com_twitter_common_header_thriftandroid_VersionedCommonHeader__Fields.b(), com_twitter_common_header_thriftandroid_VersionedCommonHeader__Fields);
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
        return b((VersionedCommonHeader) obj);
    }

    static {
        d = new e("VersionedCommonHeader");
        e = new a("log_base", (byte) 12, (short) 1);
        f = new a("commonHeader", (byte) 12, (short) 2);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.LOG_BASE, new FieldMetaData("log_base", (byte) 3, new StructMetaData((byte) 12, LogBase.class)));
        enumMap.put(_Fields.COMMON_HEADER, new FieldMetaData("commonHeader", (byte) 3, new StructMetaData((byte) 12, CommonHeader.class)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(VersionedCommonHeader.class, a);
        b = _Fields.LOG_BASE;
        c = _Fields.COMMON_HEADER;
    }

    protected void a(_Fields com_twitter_common_header_thriftandroid_VersionedCommonHeader__Fields, Object obj) throws ClassCastException {
        switch (f.a[com_twitter_common_header_thriftandroid_VersionedCommonHeader__Fields.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (!(obj instanceof LogBase)) {
                    throw new ClassCastException("Was expecting value of type com.twitter.logbase.thriftandroid.LogBase for field 'log_base', but got " + obj.getClass().getSimpleName());
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                if (!(obj instanceof CommonHeader)) {
                    throw new ClassCastException("Was expecting value of type CommonHeader for field 'commonHeader', but got " + obj.getClass().getSimpleName());
                }
            default:
                throw new IllegalArgumentException("Unknown field id " + com_twitter_common_header_thriftandroid_VersionedCommonHeader__Fields);
        }
    }

    protected void b(org.apache.thrift.protocol.d dVar) throws TException {
        switch (f.a[((_Fields) this.setField_).ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                ((LogBase) this.value_).a(dVar);
            case WireMessage.WIRE_CONTROL /*2*/:
                ((CommonHeader) this.value_).a(dVar);
            default:
                throw new IllegalStateException("Cannot write union with unknown field " + this.setField_);
        }
    }

    protected a a(_Fields com_twitter_common_header_thriftandroid_VersionedCommonHeader__Fields) {
        switch (f.a[com_twitter_common_header_thriftandroid_VersionedCommonHeader__Fields.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                return e;
            case WireMessage.WIRE_CONTROL /*2*/:
                return f;
            default:
                throw new IllegalArgumentException("Unknown field id " + com_twitter_common_header_thriftandroid_VersionedCommonHeader__Fields);
        }
    }

    protected e a() {
        return d;
    }

    public boolean equals(Object obj) {
        if (obj instanceof VersionedCommonHeader) {
            return a((VersionedCommonHeader) obj);
        }
        return false;
    }

    public boolean a(VersionedCommonHeader versionedCommonHeader) {
        return versionedCommonHeader != null && b() == versionedCommonHeader.b() && c().equals(versionedCommonHeader.c());
    }

    public int b(VersionedCommonHeader versionedCommonHeader) {
        int a = org.apache.thrift.a.a((Comparable) b(), (Comparable) versionedCommonHeader.b());
        if (a == 0) {
            return org.apache.thrift.a.a(c(), versionedCommonHeader.c());
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
        if ((short) 1 == a && b(_Fields.LOG_BASE)) {
            hashCode = ((LogBase) c()).hashCode() + (hashCode * 31);
        }
        if ((short) 2 != a || !b(_Fields.COMMON_HEADER)) {
            return hashCode;
        }
        return ((CommonHeader) c()).hashCode() + (hashCode * 31);
    }
}
