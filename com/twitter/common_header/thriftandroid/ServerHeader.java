package com.twitter.common_header.thriftandroid;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
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
import org.apache.thrift.meta_data.StructMetaData;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.e;

/* compiled from: Twttr */
public class ServerHeader implements Serializable, Cloneable, TBase<ServerHeader, _Fields> {
    public static final Map<_Fields, FieldMetaData> a;
    public static final _Fields b;
    public static final _Fields c;
    public static final _Fields d;
    public static final _Fields e;
    public static final _Fields f;
    public static final _Fields g;
    public static final _Fields h;
    public static final _Fields i;
    public static final _Fields j;
    public static final _Fields k;
    private static final e l;
    private static final a m;
    private static final a n;
    private static final a o;
    private static final a p;
    private static final a q;
    private static final a r;
    private static final a s;
    private static final a t;
    private static final a u;
    private static final a v;
    private BitSet __isset_bit_vector;
    private long clientTimestampMs;
    private short clientTimezoneOffsetMin;
    private String loggingLibVersion;
    private RequestInfo requestInfo;
    private String serverIpAddress;
    private String serverName;
    private long serverTimestampMs;
    private String serverVersion;
    private String serviceName;
    private String transactionId;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        CLIENT_TIMESTAMP_MS((short) 1, "clientTimestampMs"),
        SERVER_TIMESTAMP_MS((short) 2, "serverTimestampMs"),
        SERVER_IP_ADDRESS((short) 3, "serverIpAddress"),
        SERVER_NAME((short) 4, "serverName"),
        SERVER_VERSION((short) 5, "serverVersion"),
        LOGGING_LIB_VERSION((short) 6, "loggingLibVersion"),
        REQUEST_INFO((short) 7, "requestInfo"),
        TRANSACTION_ID((short) 8, "transactionId"),
        CLIENT_TIMEZONE_OFFSET_MIN((short) 9, "clientTimezoneOffsetMin"),
        SERVICE_NAME((short) 10, "serviceName");
        
        private static final Map<String, _Fields> k;
        private final String _fieldName;
        private final short _thriftId;

        static {
            k = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_common_header_thriftandroid_ServerHeader__Fields = (_Fields) it.next();
                k.put(com_twitter_common_header_thriftandroid_ServerHeader__Fields.b(), com_twitter_common_header_thriftandroid_ServerHeader__Fields);
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
        return b((ServerHeader) obj);
    }

    static {
        l = new e("ServerHeader");
        m = new a("clientTimestampMs", (byte) 10, (short) 1);
        n = new a("serverTimestampMs", (byte) 10, (short) 2);
        o = new a("serverIpAddress", (byte) 11, (short) 3);
        p = new a("serverName", (byte) 11, (short) 4);
        q = new a("serverVersion", (byte) 11, (short) 5);
        r = new a("loggingLibVersion", (byte) 11, (short) 6);
        s = new a("requestInfo", (byte) 12, (short) 7);
        t = new a("transactionId", (byte) 11, (short) 8);
        u = new a("clientTimezoneOffsetMin", (byte) 6, (short) 9);
        v = new a("serviceName", (byte) 11, (short) 10);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.CLIENT_TIMESTAMP_MS, new FieldMetaData("clientTimestampMs", (byte) 1, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.SERVER_TIMESTAMP_MS, new FieldMetaData("serverTimestampMs", (byte) 1, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.SERVER_IP_ADDRESS, new FieldMetaData("serverIpAddress", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.SERVER_NAME, new FieldMetaData("serverName", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.SERVER_VERSION, new FieldMetaData("serverVersion", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.LOGGING_LIB_VERSION, new FieldMetaData("loggingLibVersion", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.REQUEST_INFO, new FieldMetaData("requestInfo", (byte) 2, new StructMetaData((byte) 12, RequestInfo.class)));
        enumMap.put(_Fields.TRANSACTION_ID, new FieldMetaData("transactionId", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.CLIENT_TIMEZONE_OFFSET_MIN, new FieldMetaData("clientTimezoneOffsetMin", (byte) 2, new FieldValueMetaData((byte) 6)));
        enumMap.put(_Fields.SERVICE_NAME, new FieldMetaData("serviceName", (byte) 1, new FieldValueMetaData((byte) 11)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(ServerHeader.class, a);
        b = _Fields.CLIENT_TIMESTAMP_MS;
        c = _Fields.SERVER_TIMESTAMP_MS;
        d = _Fields.SERVER_IP_ADDRESS;
        e = _Fields.SERVER_NAME;
        f = _Fields.SERVER_VERSION;
        g = _Fields.LOGGING_LIB_VERSION;
        h = _Fields.REQUEST_INFO;
        i = _Fields.TRANSACTION_ID;
        j = _Fields.CLIENT_TIMEZONE_OFFSET_MIN;
        k = _Fields.SERVICE_NAME;
    }

    public ServerHeader() {
        this.__isset_bit_vector = new BitSet(3);
    }

    public boolean a(_Fields com_twitter_common_header_thriftandroid_ServerHeader__Fields) {
        switch (e.a[com_twitter_common_header_thriftandroid_ServerHeader__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.__isset_bit_vector.get(0);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return this.__isset_bit_vector.get(1);
            case Util.TYPE_OTHER /*3*/:
                if (this.serverIpAddress == null) {
                    return false;
                }
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (this.serverName == null) {
                    return false;
                }
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (this.serverVersion == null) {
                    return false;
                }
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (this.loggingLibVersion == null) {
                    return false;
                }
                return true;
            case C.ENCODING_DTS /*7*/:
                if (this.requestInfo == null) {
                    return false;
                }
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                if (this.transactionId == null) {
                    return false;
                }
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return this.__isset_bit_vector.get(2);
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return this.serviceName != null;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ServerHeader)) {
            return a((ServerHeader) obj);
        }
        return false;
    }

    public boolean a(ServerHeader serverHeader) {
        if (serverHeader == null || this.clientTimestampMs != serverHeader.clientTimestampMs || this.serverTimestampMs != serverHeader.serverTimestampMs) {
            return false;
        }
        boolean a = a(_Fields.SERVER_IP_ADDRESS);
        boolean a2 = serverHeader.a(_Fields.SERVER_IP_ADDRESS);
        if ((a || a2) && (!a || !a2 || !this.serverIpAddress.equals(serverHeader.serverIpAddress))) {
            return false;
        }
        a = a(_Fields.SERVER_NAME);
        a2 = serverHeader.a(_Fields.SERVER_NAME);
        if ((a || a2) && (!a || !a2 || !this.serverName.equals(serverHeader.serverName))) {
            return false;
        }
        a = a(_Fields.SERVER_VERSION);
        a2 = serverHeader.a(_Fields.SERVER_VERSION);
        if ((a || a2) && (!a || !a2 || !this.serverVersion.equals(serverHeader.serverVersion))) {
            return false;
        }
        a = a(_Fields.LOGGING_LIB_VERSION);
        a2 = serverHeader.a(_Fields.LOGGING_LIB_VERSION);
        if ((a || a2) && (!a || !a2 || !this.loggingLibVersion.equals(serverHeader.loggingLibVersion))) {
            return false;
        }
        a = a(_Fields.REQUEST_INFO);
        a2 = serverHeader.a(_Fields.REQUEST_INFO);
        if ((a || a2) && (!a || !a2 || !this.requestInfo.a(serverHeader.requestInfo))) {
            return false;
        }
        a = a(_Fields.TRANSACTION_ID);
        a2 = serverHeader.a(_Fields.TRANSACTION_ID);
        if ((a || a2) && (!a || !a2 || !this.transactionId.equals(serverHeader.transactionId))) {
            return false;
        }
        a = a(_Fields.CLIENT_TIMEZONE_OFFSET_MIN);
        a2 = serverHeader.a(_Fields.CLIENT_TIMEZONE_OFFSET_MIN);
        if ((a || a2) && (!a || !a2 || this.clientTimezoneOffsetMin != serverHeader.clientTimezoneOffsetMin)) {
            return false;
        }
        a = a(_Fields.SERVICE_NAME);
        a2 = serverHeader.a(_Fields.SERVICE_NAME);
        if ((a || a2) && (!a || !a2 || !this.serviceName.equals(serverHeader.serviceName))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode = ((Long.valueOf(this.clientTimestampMs).hashCode() + 31) * 31) + Long.valueOf(this.serverTimestampMs).hashCode();
        if (a(_Fields.SERVER_IP_ADDRESS)) {
            hashCode = (hashCode * 31) + this.serverIpAddress.hashCode();
        }
        if (a(_Fields.SERVER_NAME)) {
            hashCode = (hashCode * 31) + this.serverName.hashCode();
        }
        if (a(_Fields.SERVER_VERSION)) {
            hashCode = (hashCode * 31) + this.serverVersion.hashCode();
        }
        if (a(_Fields.LOGGING_LIB_VERSION)) {
            hashCode = (hashCode * 31) + this.loggingLibVersion.hashCode();
        }
        if (a(_Fields.REQUEST_INFO)) {
            hashCode = (hashCode * 31) + this.requestInfo.hashCode();
        }
        if (a(_Fields.TRANSACTION_ID)) {
            hashCode = (hashCode * 31) + this.transactionId.hashCode();
        }
        if (a(_Fields.CLIENT_TIMEZONE_OFFSET_MIN)) {
            hashCode = (hashCode * 31) + Short.valueOf(this.clientTimezoneOffsetMin).hashCode();
        }
        if (a(_Fields.SERVICE_NAME)) {
            return (hashCode * 31) + this.serviceName.hashCode();
        }
        return hashCode;
    }

    public int b(ServerHeader serverHeader) {
        if (!getClass().equals(serverHeader.getClass())) {
            return getClass().getName().compareTo(serverHeader.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.CLIENT_TIMESTAMP_MS)).compareTo(Boolean.valueOf(serverHeader.a(_Fields.CLIENT_TIMESTAMP_MS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.CLIENT_TIMESTAMP_MS)) {
            compareTo = org.apache.thrift.a.a(this.clientTimestampMs, serverHeader.clientTimestampMs);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SERVER_TIMESTAMP_MS)).compareTo(Boolean.valueOf(serverHeader.a(_Fields.SERVER_TIMESTAMP_MS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SERVER_TIMESTAMP_MS)) {
            compareTo = org.apache.thrift.a.a(this.serverTimestampMs, serverHeader.serverTimestampMs);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SERVER_IP_ADDRESS)).compareTo(Boolean.valueOf(serverHeader.a(_Fields.SERVER_IP_ADDRESS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SERVER_IP_ADDRESS)) {
            compareTo = org.apache.thrift.a.a(this.serverIpAddress, serverHeader.serverIpAddress);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SERVER_NAME)).compareTo(Boolean.valueOf(serverHeader.a(_Fields.SERVER_NAME)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SERVER_NAME)) {
            compareTo = org.apache.thrift.a.a(this.serverName, serverHeader.serverName);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SERVER_VERSION)).compareTo(Boolean.valueOf(serverHeader.a(_Fields.SERVER_VERSION)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SERVER_VERSION)) {
            compareTo = org.apache.thrift.a.a(this.serverVersion, serverHeader.serverVersion);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.LOGGING_LIB_VERSION)).compareTo(Boolean.valueOf(serverHeader.a(_Fields.LOGGING_LIB_VERSION)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.LOGGING_LIB_VERSION)) {
            compareTo = org.apache.thrift.a.a(this.loggingLibVersion, serverHeader.loggingLibVersion);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.REQUEST_INFO)).compareTo(Boolean.valueOf(serverHeader.a(_Fields.REQUEST_INFO)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.REQUEST_INFO)) {
            compareTo = org.apache.thrift.a.a(this.requestInfo, serverHeader.requestInfo);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.TRANSACTION_ID)).compareTo(Boolean.valueOf(serverHeader.a(_Fields.TRANSACTION_ID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.TRANSACTION_ID)) {
            compareTo = org.apache.thrift.a.a(this.transactionId, serverHeader.transactionId);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.CLIENT_TIMEZONE_OFFSET_MIN)).compareTo(Boolean.valueOf(serverHeader.a(_Fields.CLIENT_TIMEZONE_OFFSET_MIN)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.CLIENT_TIMEZONE_OFFSET_MIN)) {
            compareTo = org.apache.thrift.a.a(this.clientTimezoneOffsetMin, serverHeader.clientTimezoneOffsetMin);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SERVICE_NAME)).compareTo(Boolean.valueOf(serverHeader.a(_Fields.SERVICE_NAME)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SERVICE_NAME)) {
            compareTo = org.apache.thrift.a.a(this.serviceName, serverHeader.serviceName);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(l);
        dVar.a(m);
        dVar.a(this.clientTimestampMs);
        dVar.b();
        dVar.a(n);
        dVar.a(this.serverTimestampMs);
        dVar.b();
        if (this.serverIpAddress != null) {
            dVar.a(o);
            dVar.a(this.serverIpAddress);
            dVar.b();
        }
        if (this.serverName != null) {
            dVar.a(p);
            dVar.a(this.serverName);
            dVar.b();
        }
        if (this.serverVersion != null) {
            dVar.a(q);
            dVar.a(this.serverVersion);
            dVar.b();
        }
        if (this.loggingLibVersion != null) {
            dVar.a(r);
            dVar.a(this.loggingLibVersion);
            dVar.b();
        }
        if (this.requestInfo != null && a(_Fields.REQUEST_INFO)) {
            dVar.a(s);
            this.requestInfo.a(dVar);
            dVar.b();
        }
        if (this.transactionId != null) {
            dVar.a(t);
            dVar.a(this.transactionId);
            dVar.b();
        }
        if (a(_Fields.CLIENT_TIMEZONE_OFFSET_MIN)) {
            dVar.a(u);
            dVar.a(this.clientTimezoneOffsetMin);
            dVar.b();
        }
        if (this.serviceName != null) {
            dVar.a(v);
            dVar.a(this.serviceName);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ServerHeader(");
        stringBuilder.append("clientTimestampMs:");
        stringBuilder.append(this.clientTimestampMs);
        stringBuilder.append(", ");
        stringBuilder.append("serverTimestampMs:");
        stringBuilder.append(this.serverTimestampMs);
        stringBuilder.append(", ");
        stringBuilder.append("serverIpAddress:");
        if (this.serverIpAddress == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.serverIpAddress);
        }
        stringBuilder.append(", ");
        stringBuilder.append("serverName:");
        if (this.serverName == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.serverName);
        }
        stringBuilder.append(", ");
        stringBuilder.append("serverVersion:");
        if (this.serverVersion == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.serverVersion);
        }
        stringBuilder.append(", ");
        stringBuilder.append("loggingLibVersion:");
        if (this.loggingLibVersion == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.loggingLibVersion);
        }
        if (a(_Fields.REQUEST_INFO)) {
            stringBuilder.append(", ");
            stringBuilder.append("requestInfo:");
            if (this.requestInfo == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.requestInfo);
            }
        }
        stringBuilder.append(", ");
        stringBuilder.append("transactionId:");
        if (this.transactionId == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.transactionId);
        }
        if (a(_Fields.CLIENT_TIMEZONE_OFFSET_MIN)) {
            stringBuilder.append(", ");
            stringBuilder.append("clientTimezoneOffsetMin:");
            stringBuilder.append(this.clientTimezoneOffsetMin);
        }
        stringBuilder.append(", ");
        stringBuilder.append("serviceName:");
        if (this.serviceName == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.serviceName);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
        if (this.serverIpAddress == null) {
            throw new TProtocolException("Required field 'serverIpAddress' was not present! Struct: " + toString());
        } else if (this.serverName == null) {
            throw new TProtocolException("Required field 'serverName' was not present! Struct: " + toString());
        } else if (this.serverVersion == null) {
            throw new TProtocolException("Required field 'serverVersion' was not present! Struct: " + toString());
        } else if (this.loggingLibVersion == null) {
            throw new TProtocolException("Required field 'loggingLibVersion' was not present! Struct: " + toString());
        } else if (this.transactionId == null) {
            throw new TProtocolException("Required field 'transactionId' was not present! Struct: " + toString());
        } else if (this.serviceName == null) {
            throw new TProtocolException("Required field 'serviceName' was not present! Struct: " + toString());
        }
    }
}
