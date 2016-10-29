package com.twitter.clientapp.thriftandroid;

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
import org.apache.thrift.TBase;
import org.apache.thrift.TException;
import org.apache.thrift.d;
import org.apache.thrift.meta_data.FieldMetaData;
import org.apache.thrift.meta_data.FieldValueMetaData;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.e;

/* compiled from: Twttr */
public class ExperimentDetails implements Serializable, Cloneable, TBase<ExperimentDetails, _Fields> {
    public static final Map<_Fields, FieldMetaData> a;
    public static final _Fields b;
    public static final _Fields c;
    public static final _Fields d;
    public static final _Fields e;
    public static final _Fields f;
    private static final e g;
    private static final a h;
    private static final a i;
    private static final a j;
    private static final a k;
    private static final a l;
    private BitSet __isset_bit_vector;
    private String bucket;
    private String experiment_key;
    private String external_session_id;
    private String impression_label;
    private int version;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        EXPERIMENT_KEY((short) 1, "experiment_key"),
        BUCKET((short) 2, "bucket"),
        VERSION((short) 3, "version"),
        EXTERNAL_SESSION_ID((short) 4, "external_session_id"),
        IMPRESSION_LABEL((short) 5, "impression_label");
        
        private static final Map<String, _Fields> f;
        private final String _fieldName;
        private final short _thriftId;

        static {
            f = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_clientapp_thriftandroid_ExperimentDetails__Fields = (_Fields) it.next();
                f.put(com_twitter_clientapp_thriftandroid_ExperimentDetails__Fields.b(), com_twitter_clientapp_thriftandroid_ExperimentDetails__Fields);
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
        return b((ExperimentDetails) obj);
    }

    static {
        g = new e("ExperimentDetails");
        h = new a("experiment_key", (byte) 11, (short) 1);
        i = new a("bucket", (byte) 11, (short) 2);
        j = new a("version", (byte) 8, (short) 3);
        k = new a("external_session_id", (byte) 11, (short) 4);
        l = new a("impression_label", (byte) 11, (short) 5);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.EXPERIMENT_KEY, new FieldMetaData("experiment_key", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.BUCKET, new FieldMetaData("bucket", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.VERSION, new FieldMetaData("version", (byte) 2, new FieldValueMetaData((byte) 8)));
        enumMap.put(_Fields.EXTERNAL_SESSION_ID, new FieldMetaData("external_session_id", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.IMPRESSION_LABEL, new FieldMetaData("impression_label", (byte) 2, new FieldValueMetaData((byte) 11)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(ExperimentDetails.class, a);
        b = _Fields.EXPERIMENT_KEY;
        c = _Fields.BUCKET;
        d = _Fields.VERSION;
        e = _Fields.EXTERNAL_SESSION_ID;
        f = _Fields.IMPRESSION_LABEL;
    }

    public ExperimentDetails() {
        this.__isset_bit_vector = new BitSet(1);
    }

    public ExperimentDetails(String str, String str2, Integer num, String str3, String str4) {
        this();
        if (str != null) {
            this.experiment_key = str;
        }
        if (str2 != null) {
            this.bucket = str2;
        }
        if (num != null) {
            this.version = num.intValue();
            this.__isset_bit_vector.set(0, true);
        }
        if (str3 != null) {
            this.external_session_id = str3;
        }
        if (str4 != null) {
            this.impression_label = str4;
        }
    }

    public boolean a(_Fields com_twitter_clientapp_thriftandroid_ExperimentDetails__Fields) {
        switch (a.a[com_twitter_clientapp_thriftandroid_ExperimentDetails__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.experiment_key != null) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.bucket == null) {
                    return false;
                }
                return true;
            case Util.TYPE_OTHER /*3*/:
                return this.__isset_bit_vector.get(0);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (this.external_session_id == null) {
                    return false;
                }
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                return this.impression_label != null;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ExperimentDetails)) {
            return a((ExperimentDetails) obj);
        }
        return false;
    }

    public boolean a(ExperimentDetails experimentDetails) {
        if (experimentDetails == null) {
            return false;
        }
        boolean a = a(_Fields.EXPERIMENT_KEY);
        boolean a2 = experimentDetails.a(_Fields.EXPERIMENT_KEY);
        if ((a || a2) && (!a || !a2 || !this.experiment_key.equals(experimentDetails.experiment_key))) {
            return false;
        }
        a = a(_Fields.BUCKET);
        a2 = experimentDetails.a(_Fields.BUCKET);
        if ((a || a2) && (!a || !a2 || !this.bucket.equals(experimentDetails.bucket))) {
            return false;
        }
        a = a(_Fields.VERSION);
        a2 = experimentDetails.a(_Fields.VERSION);
        if ((a || a2) && (!a || !a2 || this.version != experimentDetails.version)) {
            return false;
        }
        a = a(_Fields.EXTERNAL_SESSION_ID);
        a2 = experimentDetails.a(_Fields.EXTERNAL_SESSION_ID);
        if ((a || a2) && (!a || !a2 || !this.external_session_id.equals(experimentDetails.external_session_id))) {
            return false;
        }
        a = a(_Fields.IMPRESSION_LABEL);
        a2 = experimentDetails.a(_Fields.IMPRESSION_LABEL);
        if ((a || a2) && (!a || !a2 || !this.impression_label.equals(experimentDetails.impression_label))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        if (a(_Fields.EXPERIMENT_KEY)) {
            i = this.experiment_key.hashCode() + 31;
        }
        if (a(_Fields.BUCKET)) {
            i = (i * 31) + this.bucket.hashCode();
        }
        if (a(_Fields.VERSION)) {
            i = (i * 31) + Integer.valueOf(this.version).hashCode();
        }
        if (a(_Fields.EXTERNAL_SESSION_ID)) {
            i = (i * 31) + this.external_session_id.hashCode();
        }
        if (a(_Fields.IMPRESSION_LABEL)) {
            return (i * 31) + this.impression_label.hashCode();
        }
        return i;
    }

    public int b(ExperimentDetails experimentDetails) {
        if (!getClass().equals(experimentDetails.getClass())) {
            return getClass().getName().compareTo(experimentDetails.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.EXPERIMENT_KEY)).compareTo(Boolean.valueOf(experimentDetails.a(_Fields.EXPERIMENT_KEY)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.EXPERIMENT_KEY)) {
            compareTo = org.apache.thrift.a.a(this.experiment_key, experimentDetails.experiment_key);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.BUCKET)).compareTo(Boolean.valueOf(experimentDetails.a(_Fields.BUCKET)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.BUCKET)) {
            compareTo = org.apache.thrift.a.a(this.bucket, experimentDetails.bucket);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.VERSION)).compareTo(Boolean.valueOf(experimentDetails.a(_Fields.VERSION)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.VERSION)) {
            compareTo = org.apache.thrift.a.a(this.version, experimentDetails.version);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.EXTERNAL_SESSION_ID)).compareTo(Boolean.valueOf(experimentDetails.a(_Fields.EXTERNAL_SESSION_ID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.EXTERNAL_SESSION_ID)) {
            compareTo = org.apache.thrift.a.a(this.external_session_id, experimentDetails.external_session_id);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.IMPRESSION_LABEL)).compareTo(Boolean.valueOf(experimentDetails.a(_Fields.IMPRESSION_LABEL)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.IMPRESSION_LABEL)) {
            compareTo = org.apache.thrift.a.a(this.impression_label, experimentDetails.impression_label);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(g);
        if (this.experiment_key != null && a(_Fields.EXPERIMENT_KEY)) {
            dVar.a(h);
            dVar.a(this.experiment_key);
            dVar.b();
        }
        if (this.bucket != null && a(_Fields.BUCKET)) {
            dVar.a(i);
            dVar.a(this.bucket);
            dVar.b();
        }
        if (a(_Fields.VERSION)) {
            dVar.a(j);
            dVar.a(this.version);
            dVar.b();
        }
        if (this.external_session_id != null && a(_Fields.EXTERNAL_SESSION_ID)) {
            dVar.a(k);
            dVar.a(this.external_session_id);
            dVar.b();
        }
        if (this.impression_label != null && a(_Fields.IMPRESSION_LABEL)) {
            dVar.a(l);
            dVar.a(this.impression_label);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        Object obj = null;
        StringBuilder stringBuilder = new StringBuilder("ExperimentDetails(");
        Object obj2 = 1;
        if (a(_Fields.EXPERIMENT_KEY)) {
            stringBuilder.append("experiment_key:");
            if (this.experiment_key == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.experiment_key);
            }
            obj2 = null;
        }
        if (a(_Fields.BUCKET)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("bucket:");
            if (this.bucket == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.bucket);
            }
            obj2 = null;
        }
        if (a(_Fields.VERSION)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("version:");
            stringBuilder.append(this.version);
            obj2 = null;
        }
        if (a(_Fields.EXTERNAL_SESSION_ID)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("external_session_id:");
            if (this.external_session_id == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.external_session_id);
            }
        } else {
            obj = obj2;
        }
        if (a(_Fields.IMPRESSION_LABEL)) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("impression_label:");
            if (this.impression_label == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.impression_label);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
    }
}
