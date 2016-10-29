package com.twitter.common_header.thriftandroid;

import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
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
import java.util.Map.Entry;
import org.apache.thrift.TBase;
import org.apache.thrift.TException;
import org.apache.thrift.d;
import org.apache.thrift.meta_data.EnumMetaData;
import org.apache.thrift.meta_data.FieldMetaData;
import org.apache.thrift.meta_data.FieldValueMetaData;
import org.apache.thrift.meta_data.MapMetaData;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.c;
import org.apache.thrift.protocol.e;

/* compiled from: Twttr */
public class RequestInfo implements Serializable, Cloneable, TBase<RequestInfo, _Fields> {
    public static final Map<_Fields, FieldMetaData> a;
    public static final _Fields b;
    public static final _Fields c;
    public static final _Fields d;
    public static final _Fields e;
    public static final _Fields f;
    public static final _Fields g;
    private static final e h;
    private static final a i;
    private static final a j;
    private static final a k;
    private static final a l;
    private static final a m;
    private static final a n;
    private BitSet __isset_bit_vector;
    private String clientIpAddress;
    private String countryCode;
    private Map<IdType, String> ids;
    private String languageCode;
    private long oauthAppId;
    private String userAgent;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        IDS((short) 1, "ids"),
        CLIENT_IP_ADDRESS((short) 2, "clientIpAddress"),
        OAUTH_APP_ID((short) 4, "oauthAppId"),
        USER_AGENT((short) 5, "userAgent"),
        LANGUAGE_CODE((short) 6, "languageCode"),
        COUNTRY_CODE((short) 7, "countryCode");
        
        private static final Map<String, _Fields> g;
        private final String _fieldName;
        private final short _thriftId;

        static {
            g = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_common_header_thriftandroid_RequestInfo__Fields = (_Fields) it.next();
                g.put(com_twitter_common_header_thriftandroid_RequestInfo__Fields.b(), com_twitter_common_header_thriftandroid_RequestInfo__Fields);
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
        return b((RequestInfo) obj);
    }

    static {
        h = new e("RequestInfo");
        i = new a("ids", (byte) 13, (short) 1);
        j = new a("clientIpAddress", (byte) 11, (short) 2);
        k = new a("oauthAppId", (byte) 10, (short) 4);
        l = new a("userAgent", (byte) 11, (short) 5);
        m = new a("languageCode", (byte) 11, (short) 6);
        n = new a("countryCode", (byte) 11, (short) 7);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.IDS, new FieldMetaData("ids", (byte) 1, new MapMetaData((byte) 13, new EnumMetaData((byte) 16, IdType.class), new FieldValueMetaData((byte) 11))));
        enumMap.put(_Fields.CLIENT_IP_ADDRESS, new FieldMetaData("clientIpAddress", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.OAUTH_APP_ID, new FieldMetaData("oauthAppId", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.USER_AGENT, new FieldMetaData("userAgent", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.LANGUAGE_CODE, new FieldMetaData("languageCode", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.COUNTRY_CODE, new FieldMetaData("countryCode", (byte) 2, new FieldValueMetaData((byte) 11)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(RequestInfo.class, a);
        b = _Fields.IDS;
        c = _Fields.CLIENT_IP_ADDRESS;
        d = _Fields.OAUTH_APP_ID;
        e = _Fields.USER_AGENT;
        f = _Fields.LANGUAGE_CODE;
        g = _Fields.COUNTRY_CODE;
    }

    public RequestInfo() {
        this.__isset_bit_vector = new BitSet(1);
    }

    public boolean a(_Fields com_twitter_common_header_thriftandroid_RequestInfo__Fields) {
        switch (d.a[com_twitter_common_header_thriftandroid_RequestInfo__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.ids != null) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.clientIpAddress == null) {
                    return false;
                }
                return true;
            case Util.TYPE_OTHER /*3*/:
                return this.__isset_bit_vector.get(0);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (this.userAgent == null) {
                    return false;
                }
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (this.languageCode == null) {
                    return false;
                }
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return this.countryCode != null;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof RequestInfo)) {
            return a((RequestInfo) obj);
        }
        return false;
    }

    public boolean a(RequestInfo requestInfo) {
        if (requestInfo == null) {
            return false;
        }
        boolean a = a(_Fields.IDS);
        boolean a2 = requestInfo.a(_Fields.IDS);
        if ((a || a2) && (!a || !a2 || !this.ids.equals(requestInfo.ids))) {
            return false;
        }
        a = a(_Fields.CLIENT_IP_ADDRESS);
        a2 = requestInfo.a(_Fields.CLIENT_IP_ADDRESS);
        if ((a || a2) && (!a || !a2 || !this.clientIpAddress.equals(requestInfo.clientIpAddress))) {
            return false;
        }
        a = a(_Fields.OAUTH_APP_ID);
        a2 = requestInfo.a(_Fields.OAUTH_APP_ID);
        if ((a || a2) && (!a || !a2 || this.oauthAppId != requestInfo.oauthAppId)) {
            return false;
        }
        a = a(_Fields.USER_AGENT);
        a2 = requestInfo.a(_Fields.USER_AGENT);
        if ((a || a2) && (!a || !a2 || !this.userAgent.equals(requestInfo.userAgent))) {
            return false;
        }
        a = a(_Fields.LANGUAGE_CODE);
        a2 = requestInfo.a(_Fields.LANGUAGE_CODE);
        if ((a || a2) && (!a || !a2 || !this.languageCode.equals(requestInfo.languageCode))) {
            return false;
        }
        a = a(_Fields.COUNTRY_CODE);
        a2 = requestInfo.a(_Fields.COUNTRY_CODE);
        if ((a || a2) && (!a || !a2 || !this.countryCode.equals(requestInfo.countryCode))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        if (a(_Fields.IDS)) {
            i = this.ids.hashCode() + 31;
        }
        if (a(_Fields.CLIENT_IP_ADDRESS)) {
            i = (i * 31) + this.clientIpAddress.hashCode();
        }
        if (a(_Fields.OAUTH_APP_ID)) {
            i = (i * 31) + Long.valueOf(this.oauthAppId).hashCode();
        }
        if (a(_Fields.USER_AGENT)) {
            i = (i * 31) + this.userAgent.hashCode();
        }
        if (a(_Fields.LANGUAGE_CODE)) {
            i = (i * 31) + this.languageCode.hashCode();
        }
        if (a(_Fields.COUNTRY_CODE)) {
            return (i * 31) + this.countryCode.hashCode();
        }
        return i;
    }

    public int b(RequestInfo requestInfo) {
        if (!getClass().equals(requestInfo.getClass())) {
            return getClass().getName().compareTo(requestInfo.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.IDS)).compareTo(Boolean.valueOf(requestInfo.a(_Fields.IDS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.IDS)) {
            compareTo = org.apache.thrift.a.a(this.ids, requestInfo.ids);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.CLIENT_IP_ADDRESS)).compareTo(Boolean.valueOf(requestInfo.a(_Fields.CLIENT_IP_ADDRESS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.CLIENT_IP_ADDRESS)) {
            compareTo = org.apache.thrift.a.a(this.clientIpAddress, requestInfo.clientIpAddress);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.OAUTH_APP_ID)).compareTo(Boolean.valueOf(requestInfo.a(_Fields.OAUTH_APP_ID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.OAUTH_APP_ID)) {
            compareTo = org.apache.thrift.a.a(this.oauthAppId, requestInfo.oauthAppId);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.USER_AGENT)).compareTo(Boolean.valueOf(requestInfo.a(_Fields.USER_AGENT)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.USER_AGENT)) {
            compareTo = org.apache.thrift.a.a(this.userAgent, requestInfo.userAgent);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.LANGUAGE_CODE)).compareTo(Boolean.valueOf(requestInfo.a(_Fields.LANGUAGE_CODE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.LANGUAGE_CODE)) {
            compareTo = org.apache.thrift.a.a(this.languageCode, requestInfo.languageCode);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.COUNTRY_CODE)).compareTo(Boolean.valueOf(requestInfo.a(_Fields.COUNTRY_CODE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.COUNTRY_CODE)) {
            compareTo = org.apache.thrift.a.a(this.countryCode, requestInfo.countryCode);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(h);
        if (this.ids != null) {
            dVar.a(i);
            dVar.a(new c((byte) 8, (byte) 11, this.ids.size()));
            for (Entry entry : this.ids.entrySet()) {
                dVar.a(((IdType) entry.getKey()).a());
                dVar.a((String) entry.getValue());
            }
            dVar.d();
            dVar.b();
        }
        if (this.clientIpAddress != null) {
            dVar.a(j);
            dVar.a(this.clientIpAddress);
            dVar.b();
        }
        if (a(_Fields.OAUTH_APP_ID)) {
            dVar.a(k);
            dVar.a(this.oauthAppId);
            dVar.b();
        }
        if (this.userAgent != null) {
            dVar.a(l);
            dVar.a(this.userAgent);
            dVar.b();
        }
        if (this.languageCode != null && a(_Fields.LANGUAGE_CODE)) {
            dVar.a(m);
            dVar.a(this.languageCode);
            dVar.b();
        }
        if (this.countryCode != null && a(_Fields.COUNTRY_CODE)) {
            dVar.a(n);
            dVar.a(this.countryCode);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("RequestInfo(");
        stringBuilder.append("ids:");
        if (this.ids == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.ids);
        }
        stringBuilder.append(", ");
        stringBuilder.append("clientIpAddress:");
        if (this.clientIpAddress == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.clientIpAddress);
        }
        if (a(_Fields.OAUTH_APP_ID)) {
            stringBuilder.append(", ");
            stringBuilder.append("oauthAppId:");
            stringBuilder.append(this.oauthAppId);
        }
        stringBuilder.append(", ");
        stringBuilder.append("userAgent:");
        if (this.userAgent == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.userAgent);
        }
        if (a(_Fields.LANGUAGE_CODE)) {
            stringBuilder.append(", ");
            stringBuilder.append("languageCode:");
            if (this.languageCode == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.languageCode);
            }
        }
        if (a(_Fields.COUNTRY_CODE)) {
            stringBuilder.append(", ");
            stringBuilder.append("countryCode:");
            if (this.countryCode == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.countryCode);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
        if (this.ids == null) {
            throw new TProtocolException("Required field 'ids' was not present! Struct: " + toString());
        } else if (this.clientIpAddress == null) {
            throw new TProtocolException("Required field 'clientIpAddress' was not present! Struct: " + toString());
        } else if (this.userAgent == null) {
            throw new TProtocolException("Required field 'userAgent' was not present! Struct: " + toString());
        }
    }
}
