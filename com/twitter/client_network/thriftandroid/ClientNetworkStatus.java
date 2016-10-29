package com.twitter.client_network.thriftandroid;

import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.clientapp.thriftandroid.MobileDetails;
import com.twitter.clientapp.thriftandroid.NetworkStatus;
import com.twitter.clientapp.thriftandroid.RadioStatus;
import java.io.Serializable;
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
import org.apache.thrift.meta_data.StructMetaData;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.e;

/* compiled from: Twttr */
public class ClientNetworkStatus implements Serializable, Cloneable, TBase<ClientNetworkStatus, _Fields> {
    public static final Map<_Fields, FieldMetaData> a;
    public static final _Fields b;
    public static final _Fields c;
    public static final _Fields d;
    public static final _Fields e;
    public static final _Fields f;
    public static final _Fields g;
    public static final _Fields h;
    public static final _Fields i;
    private static final e j;
    private static final a k;
    private static final a l;
    private static final a m;
    private static final a n;
    private static final a o;
    private static final a p;
    private static final a q;
    private static final a r;
    private String bssid_hash;
    private CaptivePortalStatus captive_portal_status;
    private NetworkStatus internet_status;
    private MobileDetails mobile_details;
    private NetworkStatus network_status;
    private RadioStatus radio_status;
    private String radio_status_raw;
    private String ssid_hash;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        NETWORK_STATUS((short) 1, "network_status"),
        INTERNET_STATUS((short) 2, "internet_status"),
        RADIO_STATUS((short) 3, "radio_status"),
        RADIO_STATUS_RAW((short) 4, "radio_status_raw"),
        CAPTIVE_PORTAL_STATUS((short) 5, "captive_portal_status"),
        SSID_HASH((short) 6, "ssid_hash"),
        BSSID_HASH((short) 7, "bssid_hash"),
        MOBILE_DETAILS((short) 8, "mobile_details");
        
        private static final Map<String, _Fields> i;
        private final String _fieldName;
        private final short _thriftId;

        static {
            i = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_client_network_thriftandroid_ClientNetworkStatus__Fields = (_Fields) it.next();
                i.put(com_twitter_client_network_thriftandroid_ClientNetworkStatus__Fields.b(), com_twitter_client_network_thriftandroid_ClientNetworkStatus__Fields);
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
        return b((ClientNetworkStatus) obj);
    }

    static {
        j = new e("ClientNetworkStatus");
        k = new a("network_status", (byte) 8, (short) 1);
        l = new a("internet_status", (byte) 8, (short) 2);
        m = new a("radio_status", (byte) 8, (short) 3);
        n = new a("radio_status_raw", (byte) 11, (short) 4);
        o = new a("captive_portal_status", (byte) 8, (short) 5);
        p = new a("ssid_hash", (byte) 11, (short) 6);
        q = new a("bssid_hash", (byte) 11, (short) 7);
        r = new a("mobile_details", (byte) 12, (short) 8);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.NETWORK_STATUS, new FieldMetaData("network_status", (byte) 2, new EnumMetaData((byte) 16, NetworkStatus.class)));
        enumMap.put(_Fields.INTERNET_STATUS, new FieldMetaData("internet_status", (byte) 2, new EnumMetaData((byte) 16, NetworkStatus.class)));
        enumMap.put(_Fields.RADIO_STATUS, new FieldMetaData("radio_status", (byte) 2, new EnumMetaData((byte) 16, RadioStatus.class)));
        enumMap.put(_Fields.RADIO_STATUS_RAW, new FieldMetaData("radio_status_raw", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.CAPTIVE_PORTAL_STATUS, new FieldMetaData("captive_portal_status", (byte) 2, new EnumMetaData((byte) 16, CaptivePortalStatus.class)));
        enumMap.put(_Fields.SSID_HASH, new FieldMetaData("ssid_hash", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.BSSID_HASH, new FieldMetaData("bssid_hash", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.MOBILE_DETAILS, new FieldMetaData("mobile_details", (byte) 2, new StructMetaData((byte) 12, MobileDetails.class)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(ClientNetworkStatus.class, a);
        b = _Fields.NETWORK_STATUS;
        c = _Fields.INTERNET_STATUS;
        d = _Fields.RADIO_STATUS;
        e = _Fields.RADIO_STATUS_RAW;
        f = _Fields.CAPTIVE_PORTAL_STATUS;
        g = _Fields.SSID_HASH;
        h = _Fields.BSSID_HASH;
        i = _Fields.MOBILE_DETAILS;
    }

    public ClientNetworkStatus(NetworkStatus networkStatus, NetworkStatus networkStatus2, RadioStatus radioStatus, String str, CaptivePortalStatus captivePortalStatus, String str2, String str3, MobileDetails mobileDetails) {
        this();
        if (networkStatus != null) {
            this.network_status = networkStatus;
        }
        if (networkStatus2 != null) {
            this.internet_status = networkStatus2;
        }
        if (radioStatus != null) {
            this.radio_status = radioStatus;
        }
        if (str != null) {
            this.radio_status_raw = str;
        }
        if (captivePortalStatus != null) {
            this.captive_portal_status = captivePortalStatus;
        }
        if (str2 != null) {
            this.ssid_hash = str2;
        }
        if (str3 != null) {
            this.bssid_hash = str3;
        }
        if (mobileDetails != null) {
            this.mobile_details = mobileDetails;
        }
    }

    public boolean a(_Fields com_twitter_client_network_thriftandroid_ClientNetworkStatus__Fields) {
        switch (g.a[com_twitter_client_network_thriftandroid_ClientNetworkStatus__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.network_status != null) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.internet_status == null) {
                    return false;
                }
                return true;
            case Util.TYPE_OTHER /*3*/:
                if (this.radio_status == null) {
                    return false;
                }
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (this.radio_status_raw == null) {
                    return false;
                }
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (this.captive_portal_status == null) {
                    return false;
                }
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (this.ssid_hash == null) {
                    return false;
                }
                return true;
            case C.ENCODING_DTS /*7*/:
                if (this.bssid_hash == null) {
                    return false;
                }
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return this.mobile_details != null;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ClientNetworkStatus)) {
            return a((ClientNetworkStatus) obj);
        }
        return false;
    }

    public boolean a(ClientNetworkStatus clientNetworkStatus) {
        if (clientNetworkStatus == null) {
            return false;
        }
        boolean a = a(_Fields.NETWORK_STATUS);
        boolean a2 = clientNetworkStatus.a(_Fields.NETWORK_STATUS);
        if ((a || a2) && (!a || !a2 || !this.network_status.equals(clientNetworkStatus.network_status))) {
            return false;
        }
        a = a(_Fields.INTERNET_STATUS);
        a2 = clientNetworkStatus.a(_Fields.INTERNET_STATUS);
        if ((a || a2) && (!a || !a2 || !this.internet_status.equals(clientNetworkStatus.internet_status))) {
            return false;
        }
        a = a(_Fields.RADIO_STATUS);
        a2 = clientNetworkStatus.a(_Fields.RADIO_STATUS);
        if ((a || a2) && (!a || !a2 || !this.radio_status.equals(clientNetworkStatus.radio_status))) {
            return false;
        }
        a = a(_Fields.RADIO_STATUS_RAW);
        a2 = clientNetworkStatus.a(_Fields.RADIO_STATUS_RAW);
        if ((a || a2) && (!a || !a2 || !this.radio_status_raw.equals(clientNetworkStatus.radio_status_raw))) {
            return false;
        }
        a = a(_Fields.CAPTIVE_PORTAL_STATUS);
        a2 = clientNetworkStatus.a(_Fields.CAPTIVE_PORTAL_STATUS);
        if ((a || a2) && (!a || !a2 || !this.captive_portal_status.equals(clientNetworkStatus.captive_portal_status))) {
            return false;
        }
        a = a(_Fields.SSID_HASH);
        a2 = clientNetworkStatus.a(_Fields.SSID_HASH);
        if ((a || a2) && (!a || !a2 || !this.ssid_hash.equals(clientNetworkStatus.ssid_hash))) {
            return false;
        }
        a = a(_Fields.BSSID_HASH);
        a2 = clientNetworkStatus.a(_Fields.BSSID_HASH);
        if ((a || a2) && (!a || !a2 || !this.bssid_hash.equals(clientNetworkStatus.bssid_hash))) {
            return false;
        }
        a = a(_Fields.MOBILE_DETAILS);
        a2 = clientNetworkStatus.a(_Fields.MOBILE_DETAILS);
        if ((a || a2) && (!a || !a2 || !this.mobile_details.a(clientNetworkStatus.mobile_details))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        if (a(_Fields.NETWORK_STATUS)) {
            i = this.network_status.hashCode() + 31;
        }
        if (a(_Fields.INTERNET_STATUS)) {
            i = (i * 31) + this.internet_status.hashCode();
        }
        if (a(_Fields.RADIO_STATUS)) {
            i = (i * 31) + this.radio_status.hashCode();
        }
        if (a(_Fields.RADIO_STATUS_RAW)) {
            i = (i * 31) + this.radio_status_raw.hashCode();
        }
        if (a(_Fields.CAPTIVE_PORTAL_STATUS)) {
            i = (i * 31) + this.captive_portal_status.hashCode();
        }
        if (a(_Fields.SSID_HASH)) {
            i = (i * 31) + this.ssid_hash.hashCode();
        }
        if (a(_Fields.BSSID_HASH)) {
            i = (i * 31) + this.bssid_hash.hashCode();
        }
        if (a(_Fields.MOBILE_DETAILS)) {
            return (i * 31) + this.mobile_details.hashCode();
        }
        return i;
    }

    public int b(ClientNetworkStatus clientNetworkStatus) {
        if (!getClass().equals(clientNetworkStatus.getClass())) {
            return getClass().getName().compareTo(clientNetworkStatus.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.NETWORK_STATUS)).compareTo(Boolean.valueOf(clientNetworkStatus.a(_Fields.NETWORK_STATUS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.NETWORK_STATUS)) {
            compareTo = org.apache.thrift.a.a(this.network_status, clientNetworkStatus.network_status);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.INTERNET_STATUS)).compareTo(Boolean.valueOf(clientNetworkStatus.a(_Fields.INTERNET_STATUS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.INTERNET_STATUS)) {
            compareTo = org.apache.thrift.a.a(this.internet_status, clientNetworkStatus.internet_status);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.RADIO_STATUS)).compareTo(Boolean.valueOf(clientNetworkStatus.a(_Fields.RADIO_STATUS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.RADIO_STATUS)) {
            compareTo = org.apache.thrift.a.a(this.radio_status, clientNetworkStatus.radio_status);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.RADIO_STATUS_RAW)).compareTo(Boolean.valueOf(clientNetworkStatus.a(_Fields.RADIO_STATUS_RAW)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.RADIO_STATUS_RAW)) {
            compareTo = org.apache.thrift.a.a(this.radio_status_raw, clientNetworkStatus.radio_status_raw);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.CAPTIVE_PORTAL_STATUS)).compareTo(Boolean.valueOf(clientNetworkStatus.a(_Fields.CAPTIVE_PORTAL_STATUS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.CAPTIVE_PORTAL_STATUS)) {
            compareTo = org.apache.thrift.a.a(this.captive_portal_status, clientNetworkStatus.captive_portal_status);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SSID_HASH)).compareTo(Boolean.valueOf(clientNetworkStatus.a(_Fields.SSID_HASH)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SSID_HASH)) {
            compareTo = org.apache.thrift.a.a(this.ssid_hash, clientNetworkStatus.ssid_hash);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.BSSID_HASH)).compareTo(Boolean.valueOf(clientNetworkStatus.a(_Fields.BSSID_HASH)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.BSSID_HASH)) {
            compareTo = org.apache.thrift.a.a(this.bssid_hash, clientNetworkStatus.bssid_hash);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.MOBILE_DETAILS)).compareTo(Boolean.valueOf(clientNetworkStatus.a(_Fields.MOBILE_DETAILS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.MOBILE_DETAILS)) {
            compareTo = org.apache.thrift.a.a(this.mobile_details, clientNetworkStatus.mobile_details);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(j);
        if (this.network_status != null && a(_Fields.NETWORK_STATUS)) {
            dVar.a(k);
            dVar.a(this.network_status.a());
            dVar.b();
        }
        if (this.internet_status != null && a(_Fields.INTERNET_STATUS)) {
            dVar.a(l);
            dVar.a(this.internet_status.a());
            dVar.b();
        }
        if (this.radio_status != null && a(_Fields.RADIO_STATUS)) {
            dVar.a(m);
            dVar.a(this.radio_status.a());
            dVar.b();
        }
        if (this.radio_status_raw != null && a(_Fields.RADIO_STATUS_RAW)) {
            dVar.a(n);
            dVar.a(this.radio_status_raw);
            dVar.b();
        }
        if (this.captive_portal_status != null && a(_Fields.CAPTIVE_PORTAL_STATUS)) {
            dVar.a(o);
            dVar.a(this.captive_portal_status.a());
            dVar.b();
        }
        if (this.ssid_hash != null && a(_Fields.SSID_HASH)) {
            dVar.a(p);
            dVar.a(this.ssid_hash);
            dVar.b();
        }
        if (this.bssid_hash != null && a(_Fields.BSSID_HASH)) {
            dVar.a(q);
            dVar.a(this.bssid_hash);
            dVar.b();
        }
        if (this.mobile_details != null && a(_Fields.MOBILE_DETAILS)) {
            dVar.a(r);
            this.mobile_details.a(dVar);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        Object obj = null;
        StringBuilder stringBuilder = new StringBuilder("ClientNetworkStatus(");
        Object obj2 = 1;
        if (a(_Fields.NETWORK_STATUS)) {
            stringBuilder.append("network_status:");
            if (this.network_status == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.network_status);
            }
            obj2 = null;
        }
        if (a(_Fields.INTERNET_STATUS)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("internet_status:");
            if (this.internet_status == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.internet_status);
            }
            obj2 = null;
        }
        if (a(_Fields.RADIO_STATUS)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("radio_status:");
            if (this.radio_status == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.radio_status);
            }
            obj2 = null;
        }
        if (a(_Fields.RADIO_STATUS_RAW)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("radio_status_raw:");
            if (this.radio_status_raw == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.radio_status_raw);
            }
            obj2 = null;
        }
        if (a(_Fields.CAPTIVE_PORTAL_STATUS)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("captive_portal_status:");
            if (this.captive_portal_status == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.captive_portal_status);
            }
            obj2 = null;
        }
        if (a(_Fields.SSID_HASH)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("ssid_hash:");
            if (this.ssid_hash == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.ssid_hash);
            }
            obj2 = null;
        }
        if (a(_Fields.BSSID_HASH)) {
            if (obj2 == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("bssid_hash:");
            if (this.bssid_hash == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.bssid_hash);
            }
        } else {
            obj = obj2;
        }
        if (a(_Fields.MOBILE_DETAILS)) {
            if (obj == null) {
                stringBuilder.append(", ");
            }
            stringBuilder.append("mobile_details:");
            if (this.mobile_details == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.mobile_details);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
    }
}
