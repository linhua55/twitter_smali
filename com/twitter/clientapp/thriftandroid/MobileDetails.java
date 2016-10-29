package com.twitter.clientapp.thriftandroid;

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
import org.apache.thrift.meta_data.EnumMetaData;
import org.apache.thrift.meta_data.FieldMetaData;
import org.apache.thrift.meta_data.FieldValueMetaData;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.e;

/* compiled from: Twttr */
public class MobileDetails implements Serializable, Cloneable, TBase<MobileDetails, _Fields> {
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
    public static final _Fields l;
    public static final _Fields m;
    private static final e n;
    private static final a o;
    private static final a p;
    private static final a q;
    private static final a r;
    private static final a s;
    private static final a t;
    private static final a u;
    private static final a v;
    private static final a w;
    private static final a x;
    private static final a y;
    private static final a z;
    private BitSet __isset_bit_vector;
    private boolean limit_ad_tracking;
    private String mobile_carrier;
    private String mobile_network_operator_code;
    private String mobile_network_operator_country_code;
    private String mobile_network_operator_iso_country_code;
    private String mobile_network_operator_name;
    private String mobile_sim_provider_code;
    private String mobile_sim_provider_iso_country_code;
    private String mobile_sim_provider_name;
    private Orientation orientation;
    private RadioStatus radio_status;
    private int signal_strength;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        MOBILE_CARRIER((short) 1, "mobile_carrier"),
        ORIENTATION((short) 2, "orientation"),
        SIGNAL_STRENGTH((short) 3, "signal_strength"),
        LIMIT_AD_TRACKING((short) 4, "limit_ad_tracking"),
        MOBILE_NETWORK_OPERATOR_COUNTRY_CODE((short) 5, "mobile_network_operator_country_code"),
        MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE((short) 6, "mobile_network_operator_iso_country_code"),
        MOBILE_NETWORK_OPERATOR_CODE((short) 7, "mobile_network_operator_code"),
        MOBILE_NETWORK_OPERATOR_NAME((short) 8, "mobile_network_operator_name"),
        MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE((short) 9, "mobile_sim_provider_iso_country_code"),
        MOBILE_SIM_PROVIDER_CODE((short) 10, "mobile_sim_provider_code"),
        MOBILE_SIM_PROVIDER_NAME((short) 11, "mobile_sim_provider_name"),
        RADIO_STATUS((short) 12, "radio_status");
        
        private static final Map<String, _Fields> m;
        private final String _fieldName;
        private final short _thriftId;

        static {
            m = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_clientapp_thriftandroid_MobileDetails__Fields = (_Fields) it.next();
                m.put(com_twitter_clientapp_thriftandroid_MobileDetails__Fields.b(), com_twitter_clientapp_thriftandroid_MobileDetails__Fields);
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
        return b((MobileDetails) obj);
    }

    static {
        n = new e("MobileDetails");
        o = new a("mobile_carrier", (byte) 11, (short) 1);
        p = new a("orientation", (byte) 8, (short) 2);
        q = new a("signal_strength", (byte) 8, (short) 3);
        r = new a("limit_ad_tracking", (byte) 2, (short) 4);
        s = new a("mobile_network_operator_country_code", (byte) 11, (short) 5);
        t = new a("mobile_network_operator_iso_country_code", (byte) 11, (short) 6);
        u = new a("mobile_network_operator_code", (byte) 11, (short) 7);
        v = new a("mobile_network_operator_name", (byte) 11, (short) 8);
        w = new a("mobile_sim_provider_iso_country_code", (byte) 11, (short) 9);
        x = new a("mobile_sim_provider_code", (byte) 11, (short) 10);
        y = new a("mobile_sim_provider_name", (byte) 11, (short) 11);
        z = new a("radio_status", (byte) 8, (short) 12);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.MOBILE_CARRIER, new FieldMetaData("mobile_carrier", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.ORIENTATION, new FieldMetaData("orientation", (byte) 2, new EnumMetaData((byte) 16, Orientation.class)));
        enumMap.put(_Fields.SIGNAL_STRENGTH, new FieldMetaData("signal_strength", (byte) 2, new FieldValueMetaData((byte) 8)));
        enumMap.put(_Fields.LIMIT_AD_TRACKING, new FieldMetaData("limit_ad_tracking", (byte) 2, new FieldValueMetaData((byte) 2)));
        enumMap.put(_Fields.MOBILE_NETWORK_OPERATOR_COUNTRY_CODE, new FieldMetaData("mobile_network_operator_country_code", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE, new FieldMetaData("mobile_network_operator_iso_country_code", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.MOBILE_NETWORK_OPERATOR_CODE, new FieldMetaData("mobile_network_operator_code", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.MOBILE_NETWORK_OPERATOR_NAME, new FieldMetaData("mobile_network_operator_name", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE, new FieldMetaData("mobile_sim_provider_iso_country_code", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.MOBILE_SIM_PROVIDER_CODE, new FieldMetaData("mobile_sim_provider_code", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.MOBILE_SIM_PROVIDER_NAME, new FieldMetaData("mobile_sim_provider_name", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.RADIO_STATUS, new FieldMetaData("radio_status", (byte) 2, new EnumMetaData((byte) 16, RadioStatus.class)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(MobileDetails.class, a);
        b = _Fields.MOBILE_CARRIER;
        c = _Fields.ORIENTATION;
        d = _Fields.SIGNAL_STRENGTH;
        e = _Fields.LIMIT_AD_TRACKING;
        f = _Fields.MOBILE_NETWORK_OPERATOR_COUNTRY_CODE;
        g = _Fields.MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE;
        h = _Fields.MOBILE_NETWORK_OPERATOR_CODE;
        i = _Fields.MOBILE_NETWORK_OPERATOR_NAME;
        j = _Fields.MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE;
        k = _Fields.MOBILE_SIM_PROVIDER_CODE;
        l = _Fields.MOBILE_SIM_PROVIDER_NAME;
        m = _Fields.RADIO_STATUS;
    }

    public MobileDetails() {
        this.__isset_bit_vector = new BitSet(2);
    }

    public MobileDetails(String str, Orientation orientation, Integer num, Boolean bool, String str2, String str3, String str4, String str5, String str6, String str7, String str8, RadioStatus radioStatus) {
        this();
        if (str != null) {
            this.mobile_carrier = str;
        }
        if (orientation != null) {
            this.orientation = orientation;
        }
        if (num != null) {
            this.signal_strength = num.intValue();
            this.__isset_bit_vector.set(0, true);
        }
        if (bool != null) {
            this.limit_ad_tracking = bool.booleanValue();
            this.__isset_bit_vector.set(1, true);
        }
        if (str2 != null) {
            this.mobile_network_operator_country_code = str2;
        }
        if (str3 != null) {
            this.mobile_network_operator_iso_country_code = str3;
        }
        if (str4 != null) {
            this.mobile_network_operator_code = str4;
        }
        if (str5 != null) {
            this.mobile_network_operator_name = str5;
        }
        if (str6 != null) {
            this.mobile_sim_provider_iso_country_code = str6;
        }
        if (str7 != null) {
            this.mobile_sim_provider_code = str7;
        }
        if (str8 != null) {
            this.mobile_sim_provider_name = str8;
        }
        if (radioStatus != null) {
            this.radio_status = radioStatus;
        }
    }

    public boolean a(_Fields com_twitter_clientapp_thriftandroid_MobileDetails__Fields) {
        switch (c.a[com_twitter_clientapp_thriftandroid_MobileDetails__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.mobile_carrier != null) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.orientation == null) {
                    return false;
                }
                return true;
            case Util.TYPE_OTHER /*3*/:
                return this.__isset_bit_vector.get(0);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return this.__isset_bit_vector.get(1);
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (this.mobile_network_operator_country_code == null) {
                    return false;
                }
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (this.mobile_network_operator_iso_country_code == null) {
                    return false;
                }
                return true;
            case C.ENCODING_DTS /*7*/:
                if (this.mobile_network_operator_code == null) {
                    return false;
                }
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                if (this.mobile_network_operator_name == null) {
                    return false;
                }
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                if (this.mobile_sim_provider_iso_country_code == null) {
                    return false;
                }
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                if (this.mobile_sim_provider_code == null) {
                    return false;
                }
                return true;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                if (this.mobile_sim_provider_name == null) {
                    return false;
                }
                return true;
            case Atom.FULL_HEADER_SIZE /*12*/:
                return this.radio_status != null;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof MobileDetails)) {
            return a((MobileDetails) obj);
        }
        return false;
    }

    public boolean a(MobileDetails mobileDetails) {
        if (mobileDetails == null) {
            return false;
        }
        boolean a = a(_Fields.MOBILE_CARRIER);
        boolean a2 = mobileDetails.a(_Fields.MOBILE_CARRIER);
        if ((a || a2) && (!a || !a2 || !this.mobile_carrier.equals(mobileDetails.mobile_carrier))) {
            return false;
        }
        a = a(_Fields.ORIENTATION);
        a2 = mobileDetails.a(_Fields.ORIENTATION);
        if ((a || a2) && (!a || !a2 || !this.orientation.equals(mobileDetails.orientation))) {
            return false;
        }
        a = a(_Fields.SIGNAL_STRENGTH);
        a2 = mobileDetails.a(_Fields.SIGNAL_STRENGTH);
        if ((a || a2) && (!a || !a2 || this.signal_strength != mobileDetails.signal_strength)) {
            return false;
        }
        a = a(_Fields.LIMIT_AD_TRACKING);
        a2 = mobileDetails.a(_Fields.LIMIT_AD_TRACKING);
        if ((a || a2) && (!a || !a2 || this.limit_ad_tracking != mobileDetails.limit_ad_tracking)) {
            return false;
        }
        a = a(_Fields.MOBILE_NETWORK_OPERATOR_COUNTRY_CODE);
        a2 = mobileDetails.a(_Fields.MOBILE_NETWORK_OPERATOR_COUNTRY_CODE);
        if ((a || a2) && (!a || !a2 || !this.mobile_network_operator_country_code.equals(mobileDetails.mobile_network_operator_country_code))) {
            return false;
        }
        a = a(_Fields.MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE);
        a2 = mobileDetails.a(_Fields.MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE);
        if ((a || a2) && (!a || !a2 || !this.mobile_network_operator_iso_country_code.equals(mobileDetails.mobile_network_operator_iso_country_code))) {
            return false;
        }
        a = a(_Fields.MOBILE_NETWORK_OPERATOR_CODE);
        a2 = mobileDetails.a(_Fields.MOBILE_NETWORK_OPERATOR_CODE);
        if ((a || a2) && (!a || !a2 || !this.mobile_network_operator_code.equals(mobileDetails.mobile_network_operator_code))) {
            return false;
        }
        a = a(_Fields.MOBILE_NETWORK_OPERATOR_NAME);
        a2 = mobileDetails.a(_Fields.MOBILE_NETWORK_OPERATOR_NAME);
        if ((a || a2) && (!a || !a2 || !this.mobile_network_operator_name.equals(mobileDetails.mobile_network_operator_name))) {
            return false;
        }
        a = a(_Fields.MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE);
        a2 = mobileDetails.a(_Fields.MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE);
        if ((a || a2) && (!a || !a2 || !this.mobile_sim_provider_iso_country_code.equals(mobileDetails.mobile_sim_provider_iso_country_code))) {
            return false;
        }
        a = a(_Fields.MOBILE_SIM_PROVIDER_CODE);
        a2 = mobileDetails.a(_Fields.MOBILE_SIM_PROVIDER_CODE);
        if ((a || a2) && (!a || !a2 || !this.mobile_sim_provider_code.equals(mobileDetails.mobile_sim_provider_code))) {
            return false;
        }
        a = a(_Fields.MOBILE_SIM_PROVIDER_NAME);
        a2 = mobileDetails.a(_Fields.MOBILE_SIM_PROVIDER_NAME);
        if ((a || a2) && (!a || !a2 || !this.mobile_sim_provider_name.equals(mobileDetails.mobile_sim_provider_name))) {
            return false;
        }
        a = a(_Fields.RADIO_STATUS);
        a2 = mobileDetails.a(_Fields.RADIO_STATUS);
        if ((a || a2) && (!a || !a2 || !this.radio_status.equals(mobileDetails.radio_status))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        if (a(_Fields.MOBILE_CARRIER)) {
            i = this.mobile_carrier.hashCode() + 31;
        }
        if (a(_Fields.ORIENTATION)) {
            i = (i * 31) + this.orientation.hashCode();
        }
        if (a(_Fields.SIGNAL_STRENGTH)) {
            i = (i * 31) + Integer.valueOf(this.signal_strength).hashCode();
        }
        if (a(_Fields.LIMIT_AD_TRACKING)) {
            i = (i * 31) + Boolean.valueOf(this.limit_ad_tracking).hashCode();
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_COUNTRY_CODE)) {
            i = (i * 31) + this.mobile_network_operator_country_code.hashCode();
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE)) {
            i = (i * 31) + this.mobile_network_operator_iso_country_code.hashCode();
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_CODE)) {
            i = (i * 31) + this.mobile_network_operator_code.hashCode();
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_NAME)) {
            i = (i * 31) + this.mobile_network_operator_name.hashCode();
        }
        if (a(_Fields.MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE)) {
            i = (i * 31) + this.mobile_sim_provider_iso_country_code.hashCode();
        }
        if (a(_Fields.MOBILE_SIM_PROVIDER_CODE)) {
            i = (i * 31) + this.mobile_sim_provider_code.hashCode();
        }
        if (a(_Fields.MOBILE_SIM_PROVIDER_NAME)) {
            i = (i * 31) + this.mobile_sim_provider_name.hashCode();
        }
        if (a(_Fields.RADIO_STATUS)) {
            return (i * 31) + this.radio_status.hashCode();
        }
        return i;
    }

    public int b(MobileDetails mobileDetails) {
        if (!getClass().equals(mobileDetails.getClass())) {
            return getClass().getName().compareTo(mobileDetails.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.MOBILE_CARRIER)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.MOBILE_CARRIER)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.MOBILE_CARRIER)) {
            compareTo = org.apache.thrift.a.a(this.mobile_carrier, mobileDetails.mobile_carrier);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.ORIENTATION)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.ORIENTATION)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.ORIENTATION)) {
            compareTo = org.apache.thrift.a.a(this.orientation, mobileDetails.orientation);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SIGNAL_STRENGTH)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.SIGNAL_STRENGTH)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SIGNAL_STRENGTH)) {
            compareTo = org.apache.thrift.a.a(this.signal_strength, mobileDetails.signal_strength);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.LIMIT_AD_TRACKING)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.LIMIT_AD_TRACKING)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.LIMIT_AD_TRACKING)) {
            compareTo = org.apache.thrift.a.a(this.limit_ad_tracking, mobileDetails.limit_ad_tracking);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.MOBILE_NETWORK_OPERATOR_COUNTRY_CODE)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.MOBILE_NETWORK_OPERATOR_COUNTRY_CODE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_COUNTRY_CODE)) {
            compareTo = org.apache.thrift.a.a(this.mobile_network_operator_country_code, mobileDetails.mobile_network_operator_country_code);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE)) {
            compareTo = org.apache.thrift.a.a(this.mobile_network_operator_iso_country_code, mobileDetails.mobile_network_operator_iso_country_code);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.MOBILE_NETWORK_OPERATOR_CODE)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.MOBILE_NETWORK_OPERATOR_CODE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_CODE)) {
            compareTo = org.apache.thrift.a.a(this.mobile_network_operator_code, mobileDetails.mobile_network_operator_code);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.MOBILE_NETWORK_OPERATOR_NAME)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.MOBILE_NETWORK_OPERATOR_NAME)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_NAME)) {
            compareTo = org.apache.thrift.a.a(this.mobile_network_operator_name, mobileDetails.mobile_network_operator_name);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE)) {
            compareTo = org.apache.thrift.a.a(this.mobile_sim_provider_iso_country_code, mobileDetails.mobile_sim_provider_iso_country_code);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.MOBILE_SIM_PROVIDER_CODE)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.MOBILE_SIM_PROVIDER_CODE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.MOBILE_SIM_PROVIDER_CODE)) {
            compareTo = org.apache.thrift.a.a(this.mobile_sim_provider_code, mobileDetails.mobile_sim_provider_code);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.MOBILE_SIM_PROVIDER_NAME)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.MOBILE_SIM_PROVIDER_NAME)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.MOBILE_SIM_PROVIDER_NAME)) {
            compareTo = org.apache.thrift.a.a(this.mobile_sim_provider_name, mobileDetails.mobile_sim_provider_name);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.RADIO_STATUS)).compareTo(Boolean.valueOf(mobileDetails.a(_Fields.RADIO_STATUS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.RADIO_STATUS)) {
            compareTo = org.apache.thrift.a.a(this.radio_status, mobileDetails.radio_status);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(n);
        if (this.mobile_carrier != null && a(_Fields.MOBILE_CARRIER)) {
            dVar.a(o);
            dVar.a(this.mobile_carrier);
            dVar.b();
        }
        if (this.orientation != null && a(_Fields.ORIENTATION)) {
            dVar.a(p);
            dVar.a(this.orientation.a());
            dVar.b();
        }
        if (a(_Fields.SIGNAL_STRENGTH)) {
            dVar.a(q);
            dVar.a(this.signal_strength);
            dVar.b();
        }
        if (a(_Fields.LIMIT_AD_TRACKING)) {
            dVar.a(r);
            dVar.a(this.limit_ad_tracking);
            dVar.b();
        }
        if (this.mobile_network_operator_country_code != null && a(_Fields.MOBILE_NETWORK_OPERATOR_COUNTRY_CODE)) {
            dVar.a(s);
            dVar.a(this.mobile_network_operator_country_code);
            dVar.b();
        }
        if (this.mobile_network_operator_iso_country_code != null && a(_Fields.MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE)) {
            dVar.a(t);
            dVar.a(this.mobile_network_operator_iso_country_code);
            dVar.b();
        }
        if (this.mobile_network_operator_code != null && a(_Fields.MOBILE_NETWORK_OPERATOR_CODE)) {
            dVar.a(u);
            dVar.a(this.mobile_network_operator_code);
            dVar.b();
        }
        if (this.mobile_network_operator_name != null && a(_Fields.MOBILE_NETWORK_OPERATOR_NAME)) {
            dVar.a(v);
            dVar.a(this.mobile_network_operator_name);
            dVar.b();
        }
        if (this.mobile_sim_provider_iso_country_code != null && a(_Fields.MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE)) {
            dVar.a(w);
            dVar.a(this.mobile_sim_provider_iso_country_code);
            dVar.b();
        }
        if (this.mobile_sim_provider_code != null && a(_Fields.MOBILE_SIM_PROVIDER_CODE)) {
            dVar.a(x);
            dVar.a(this.mobile_sim_provider_code);
            dVar.b();
        }
        if (this.mobile_sim_provider_name != null && a(_Fields.MOBILE_SIM_PROVIDER_NAME)) {
            dVar.a(y);
            dVar.a(this.mobile_sim_provider_name);
            dVar.b();
        }
        if (this.radio_status != null && a(_Fields.RADIO_STATUS)) {
            dVar.a(z);
            dVar.a(this.radio_status.a());
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        Object obj = null;
        StringBuilder stringBuilder = new StringBuilder("MobileDetails(");
        Object obj2 = 1;
        if (a(_Fields.MOBILE_CARRIER)) {
            stringBuilder.append("mobile_carrier:");
            if (this.mobile_carrier == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.mobile_carrier);
            }
            obj2 = null;
        }
        if (a(_Fields.ORIENTATION)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("orientation:");
            if (this.orientation == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.orientation);
            }
            obj2 = null;
        }
        if (a(_Fields.SIGNAL_STRENGTH)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("signal_strength:");
            stringBuilder.append(this.signal_strength);
            obj2 = null;
        }
        if (a(_Fields.LIMIT_AD_TRACKING)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("limit_ad_tracking:");
            stringBuilder.append(this.limit_ad_tracking);
            obj2 = null;
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_COUNTRY_CODE)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("mobile_network_operator_country_code:");
            if (this.mobile_network_operator_country_code == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.mobile_network_operator_country_code);
            }
            obj2 = null;
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_ISO_COUNTRY_CODE)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("mobile_network_operator_iso_country_code:");
            if (this.mobile_network_operator_iso_country_code == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.mobile_network_operator_iso_country_code);
            }
            obj2 = null;
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_CODE)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("mobile_network_operator_code:");
            if (this.mobile_network_operator_code == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.mobile_network_operator_code);
            }
            obj2 = null;
        }
        if (a(_Fields.MOBILE_NETWORK_OPERATOR_NAME)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("mobile_network_operator_name:");
            if (this.mobile_network_operator_name == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.mobile_network_operator_name);
            }
            obj2 = null;
        }
        if (a(_Fields.MOBILE_SIM_PROVIDER_ISO_COUNTRY_CODE)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("mobile_sim_provider_iso_country_code:");
            if (this.mobile_sim_provider_iso_country_code == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.mobile_sim_provider_iso_country_code);
            }
            obj2 = null;
        }
        if (a(_Fields.MOBILE_SIM_PROVIDER_CODE)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("mobile_sim_provider_code:");
            if (this.mobile_sim_provider_code == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.mobile_sim_provider_code);
            }
            obj2 = null;
        }
        if (a(_Fields.MOBILE_SIM_PROVIDER_NAME)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("mobile_sim_provider_name:");
            if (this.mobile_sim_provider_name == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.mobile_sim_provider_name);
            }
        } else {
            obj = obj2;
        }
        if (a(_Fields.RADIO_STATUS)) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("radio_status:");
            if (this.radio_status == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.radio_status);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
    }
}
