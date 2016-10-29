package com.twitter.experiments.client.thriftandroid;

import com.twitter.common_header.thriftandroid.VersionedCommonHeader;
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
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class DdgImpression implements Serializable, Cloneable, TBase<DdgImpression, _Fields> {
    public static final Map<_Fields, FieldMetaData> a;
    public static final _Fields b;
    public static final _Fields c;
    public static final _Fields d;
    public static final _Fields e;
    private static final e f;
    private static final a g;
    private static final a h;
    private static final a i;
    private static final a j;
    private BitSet __isset_bit_vector;
    private String bucket;
    private VersionedCommonHeader commonHeader;
    private String experiment;
    private int version;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        COMMON_HEADER((short) 1, "commonHeader"),
        EXPERIMENT((short) 2, "experiment"),
        VERSION((short) 3, "version"),
        BUCKET((short) 4, "bucket");
        
        private static final Map<String, _Fields> e;
        private final String _fieldName;
        private final short _thriftId;

        static {
            e = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_experiments_client_thriftandroid_DdgImpression__Fields = (_Fields) it.next();
                e.put(com_twitter_experiments_client_thriftandroid_DdgImpression__Fields.b(), com_twitter_experiments_client_thriftandroid_DdgImpression__Fields);
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
        return b((DdgImpression) obj);
    }

    static {
        f = new e("DdgImpression");
        g = new a("commonHeader", (byte) 12, (short) 1);
        h = new a("experiment", (byte) 11, (short) 2);
        i = new a("version", (byte) 8, (short) 3);
        j = new a("bucket", (byte) 11, (short) 4);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.COMMON_HEADER, new FieldMetaData("commonHeader", (byte) 1, new StructMetaData((byte) 12, VersionedCommonHeader.class)));
        enumMap.put(_Fields.EXPERIMENT, new FieldMetaData("experiment", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.VERSION, new FieldMetaData("version", (byte) 1, new FieldValueMetaData((byte) 8)));
        enumMap.put(_Fields.BUCKET, new FieldMetaData("bucket", (byte) 1, new FieldValueMetaData((byte) 11)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(DdgImpression.class, a);
        b = _Fields.COMMON_HEADER;
        c = _Fields.EXPERIMENT;
        d = _Fields.VERSION;
        e = _Fields.BUCKET;
    }

    public DdgImpression() {
        this.__isset_bit_vector = new BitSet(1);
    }

    public DdgImpression(VersionedCommonHeader versionedCommonHeader, String str, Integer num, String str2) {
        this();
        if (versionedCommonHeader != null) {
            this.commonHeader = versionedCommonHeader;
        }
        if (str != null) {
            this.experiment = str;
        }
        if (num != null) {
            this.version = num.intValue();
            this.__isset_bit_vector.set(0, true);
        }
        if (str2 != null) {
            this.bucket = str2;
        }
    }

    public boolean a(_Fields com_twitter_experiments_client_thriftandroid_DdgImpression__Fields) {
        switch (a.a[com_twitter_experiments_client_thriftandroid_DdgImpression__Fields.ordinal()]) {
            case WireMessage.WIRE_CHAT /*1*/:
                if (this.commonHeader != null) {
                    return true;
                }
                return false;
            case WireMessage.WIRE_CONTROL /*2*/:
                if (this.experiment == null) {
                    return false;
                }
                return true;
            case WireMessage.WIRE_AUTH /*3*/:
                return this.__isset_bit_vector.get(0);
            case ControlMessage.CONTROL_PRESENCE /*4*/:
                return this.bucket != null;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof DdgImpression)) {
            return a((DdgImpression) obj);
        }
        return false;
    }

    public boolean a(DdgImpression ddgImpression) {
        if (ddgImpression == null) {
            return false;
        }
        boolean a = a(_Fields.COMMON_HEADER);
        boolean a2 = ddgImpression.a(_Fields.COMMON_HEADER);
        if ((a || a2) && (!a || !a2 || !this.commonHeader.a(ddgImpression.commonHeader))) {
            return false;
        }
        a = a(_Fields.EXPERIMENT);
        a2 = ddgImpression.a(_Fields.EXPERIMENT);
        if (((a || a2) && (!a || !a2 || !this.experiment.equals(ddgImpression.experiment))) || this.version != ddgImpression.version) {
            return false;
        }
        a = a(_Fields.BUCKET);
        a2 = ddgImpression.a(_Fields.BUCKET);
        if ((a || a2) && (!a || !a2 || !this.bucket.equals(ddgImpression.bucket))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        if (a(_Fields.COMMON_HEADER)) {
            i = this.commonHeader.hashCode() + 31;
        }
        if (a(_Fields.EXPERIMENT)) {
            i = (i * 31) + this.experiment.hashCode();
        }
        i = (i * 31) + Integer.valueOf(this.version).hashCode();
        if (a(_Fields.BUCKET)) {
            return (i * 31) + this.bucket.hashCode();
        }
        return i;
    }

    public int b(DdgImpression ddgImpression) {
        if (!getClass().equals(ddgImpression.getClass())) {
            return getClass().getName().compareTo(ddgImpression.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.COMMON_HEADER)).compareTo(Boolean.valueOf(ddgImpression.a(_Fields.COMMON_HEADER)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.COMMON_HEADER)) {
            compareTo = org.apache.thrift.a.a(this.commonHeader, ddgImpression.commonHeader);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.EXPERIMENT)).compareTo(Boolean.valueOf(ddgImpression.a(_Fields.EXPERIMENT)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.EXPERIMENT)) {
            compareTo = org.apache.thrift.a.a(this.experiment, ddgImpression.experiment);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.VERSION)).compareTo(Boolean.valueOf(ddgImpression.a(_Fields.VERSION)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.VERSION)) {
            compareTo = org.apache.thrift.a.a(this.version, ddgImpression.version);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.BUCKET)).compareTo(Boolean.valueOf(ddgImpression.a(_Fields.BUCKET)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.BUCKET)) {
            compareTo = org.apache.thrift.a.a(this.bucket, ddgImpression.bucket);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(f);
        if (this.commonHeader != null) {
            dVar.a(g);
            this.commonHeader.a(dVar);
            dVar.b();
        }
        if (this.experiment != null) {
            dVar.a(h);
            dVar.a(this.experiment);
            dVar.b();
        }
        dVar.a(i);
        dVar.a(this.version);
        dVar.b();
        if (this.bucket != null) {
            dVar.a(j);
            dVar.a(this.bucket);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("DdgImpression(");
        stringBuilder.append("commonHeader:");
        if (this.commonHeader == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.commonHeader);
        }
        stringBuilder.append(", ");
        stringBuilder.append("experiment:");
        if (this.experiment == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.experiment);
        }
        stringBuilder.append(", ");
        stringBuilder.append("version:");
        stringBuilder.append(this.version);
        stringBuilder.append(", ");
        stringBuilder.append("bucket:");
        if (this.bucket == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.bucket);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
        if (this.commonHeader == null) {
            throw new TProtocolException("Required field 'commonHeader' was not present! Struct: " + toString());
        } else if (this.experiment == null) {
            throw new TProtocolException("Required field 'experiment' was not present! Struct: " + toString());
        } else if (this.bucket == null) {
            throw new TProtocolException("Required field 'bucket' was not present! Struct: " + toString());
        }
    }
}
