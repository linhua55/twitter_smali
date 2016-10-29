package com.twitter.client_network.thriftandroid;

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
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.e;

/* compiled from: Twttr */
public class ClientNetworkRequestDetails implements Serializable, Cloneable, TBase<ClientNetworkRequestDetails, _Fields> {
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
    private long blocked_ms;
    private long connected_ms;
    private long duration_ms;
    private long latency_ms;
    private long request_body_size;
    private long response_body_size;
    private long rx_bytes;
    private long service_ms;
    private int stream_id;
    private long tx_bytes;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        DURATION_MS((short) 1, "duration_ms"),
        STREAM_ID((short) 2, "stream_id"),
        RX_BYTES((short) 3, "rx_bytes"),
        TX_BYTES((short) 4, "tx_bytes"),
        LATENCY_MS((short) 5, "latency_ms"),
        CONNECTED_MS((short) 6, "connected_ms"),
        BLOCKED_MS((short) 7, "blocked_ms"),
        REQUEST_BODY_SIZE((short) 8, "request_body_size"),
        RESPONSE_BODY_SIZE((short) 9, "response_body_size"),
        SERVICE_MS((short) 10, "service_ms");
        
        private static final Map<String, _Fields> k;
        private final String _fieldName;
        private final short _thriftId;

        static {
            k = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_client_network_thriftandroid_ClientNetworkRequestDetails__Fields = (_Fields) it.next();
                k.put(com_twitter_client_network_thriftandroid_ClientNetworkRequestDetails__Fields.b(), com_twitter_client_network_thriftandroid_ClientNetworkRequestDetails__Fields);
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
        return b((ClientNetworkRequestDetails) obj);
    }

    static {
        l = new e("ClientNetworkRequestDetails");
        m = new a("duration_ms", (byte) 10, (short) 1);
        n = new a("stream_id", (byte) 8, (short) 2);
        o = new a("rx_bytes", (byte) 10, (short) 3);
        p = new a("tx_bytes", (byte) 10, (short) 4);
        q = new a("latency_ms", (byte) 10, (short) 5);
        r = new a("connected_ms", (byte) 10, (short) 6);
        s = new a("blocked_ms", (byte) 10, (short) 7);
        t = new a("request_body_size", (byte) 10, (short) 8);
        u = new a("response_body_size", (byte) 10, (short) 9);
        v = new a("service_ms", (byte) 10, (short) 10);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.DURATION_MS, new FieldMetaData("duration_ms", (byte) 1, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.STREAM_ID, new FieldMetaData("stream_id", (byte) 2, new FieldValueMetaData((byte) 8)));
        enumMap.put(_Fields.RX_BYTES, new FieldMetaData("rx_bytes", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.TX_BYTES, new FieldMetaData("tx_bytes", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.LATENCY_MS, new FieldMetaData("latency_ms", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.CONNECTED_MS, new FieldMetaData("connected_ms", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.BLOCKED_MS, new FieldMetaData("blocked_ms", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.REQUEST_BODY_SIZE, new FieldMetaData("request_body_size", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.RESPONSE_BODY_SIZE, new FieldMetaData("response_body_size", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.SERVICE_MS, new FieldMetaData("service_ms", (byte) 2, new FieldValueMetaData((byte) 10)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(ClientNetworkRequestDetails.class, a);
        b = _Fields.DURATION_MS;
        c = _Fields.STREAM_ID;
        d = _Fields.RX_BYTES;
        e = _Fields.TX_BYTES;
        f = _Fields.LATENCY_MS;
        g = _Fields.CONNECTED_MS;
        h = _Fields.BLOCKED_MS;
        i = _Fields.REQUEST_BODY_SIZE;
        j = _Fields.RESPONSE_BODY_SIZE;
        k = _Fields.SERVICE_MS;
    }

    public ClientNetworkRequestDetails() {
        this.__isset_bit_vector = new BitSet(10);
    }

    public ClientNetworkRequestDetails(Long l, Integer num, Long l2, Long l3, Long l4, Long l5, Long l6, Long l7, Long l8, Long l9) {
        this();
        if (l != null) {
            this.duration_ms = l.longValue();
            this.__isset_bit_vector.set(0, true);
        }
        if (num != null) {
            this.stream_id = num.intValue();
            this.__isset_bit_vector.set(1, true);
        }
        if (l2 != null) {
            this.rx_bytes = l2.longValue();
            this.__isset_bit_vector.set(2, true);
        }
        if (l3 != null) {
            this.tx_bytes = l3.longValue();
            this.__isset_bit_vector.set(3, true);
        }
        if (l4 != null) {
            this.latency_ms = l4.longValue();
            this.__isset_bit_vector.set(4, true);
        }
        if (l5 != null) {
            this.connected_ms = l5.longValue();
            this.__isset_bit_vector.set(5, true);
        }
        if (l6 != null) {
            this.blocked_ms = l6.longValue();
            this.__isset_bit_vector.set(6, true);
        }
        if (l7 != null) {
            this.request_body_size = l7.longValue();
            this.__isset_bit_vector.set(7, true);
        }
        if (l8 != null) {
            this.response_body_size = l8.longValue();
            this.__isset_bit_vector.set(8, true);
        }
        if (l9 != null) {
            this.service_ms = l9.longValue();
            this.__isset_bit_vector.set(9, true);
        }
    }

    public boolean a(_Fields com_twitter_client_network_thriftandroid_ClientNetworkRequestDetails__Fields) {
        switch (c.a[com_twitter_client_network_thriftandroid_ClientNetworkRequestDetails__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.__isset_bit_vector.get(0);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return this.__isset_bit_vector.get(1);
            case Util.TYPE_OTHER /*3*/:
                return this.__isset_bit_vector.get(2);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return this.__isset_bit_vector.get(3);
            case EbmlReader.TYPE_FLOAT /*5*/:
                return this.__isset_bit_vector.get(4);
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return this.__isset_bit_vector.get(5);
            case C.ENCODING_DTS /*7*/:
                return this.__isset_bit_vector.get(6);
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                return this.__isset_bit_vector.get(7);
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                return this.__isset_bit_vector.get(8);
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return this.__isset_bit_vector.get(9);
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ClientNetworkRequestDetails)) {
            return a((ClientNetworkRequestDetails) obj);
        }
        return false;
    }

    public boolean a(ClientNetworkRequestDetails clientNetworkRequestDetails) {
        if (clientNetworkRequestDetails == null || this.duration_ms != clientNetworkRequestDetails.duration_ms) {
            return false;
        }
        boolean a = a(_Fields.STREAM_ID);
        boolean a2 = clientNetworkRequestDetails.a(_Fields.STREAM_ID);
        if ((a || a2) && (!a || !a2 || this.stream_id != clientNetworkRequestDetails.stream_id)) {
            return false;
        }
        a = a(_Fields.RX_BYTES);
        a2 = clientNetworkRequestDetails.a(_Fields.RX_BYTES);
        if ((a || a2) && (!a || !a2 || this.rx_bytes != clientNetworkRequestDetails.rx_bytes)) {
            return false;
        }
        a = a(_Fields.TX_BYTES);
        a2 = clientNetworkRequestDetails.a(_Fields.TX_BYTES);
        if ((a || a2) && (!a || !a2 || this.tx_bytes != clientNetworkRequestDetails.tx_bytes)) {
            return false;
        }
        a = a(_Fields.LATENCY_MS);
        a2 = clientNetworkRequestDetails.a(_Fields.LATENCY_MS);
        if ((a || a2) && (!a || !a2 || this.latency_ms != clientNetworkRequestDetails.latency_ms)) {
            return false;
        }
        a = a(_Fields.CONNECTED_MS);
        a2 = clientNetworkRequestDetails.a(_Fields.CONNECTED_MS);
        if ((a || a2) && (!a || !a2 || this.connected_ms != clientNetworkRequestDetails.connected_ms)) {
            return false;
        }
        a = a(_Fields.BLOCKED_MS);
        a2 = clientNetworkRequestDetails.a(_Fields.BLOCKED_MS);
        if ((a || a2) && (!a || !a2 || this.blocked_ms != clientNetworkRequestDetails.blocked_ms)) {
            return false;
        }
        a = a(_Fields.REQUEST_BODY_SIZE);
        a2 = clientNetworkRequestDetails.a(_Fields.REQUEST_BODY_SIZE);
        if ((a || a2) && (!a || !a2 || this.request_body_size != clientNetworkRequestDetails.request_body_size)) {
            return false;
        }
        a = a(_Fields.RESPONSE_BODY_SIZE);
        a2 = clientNetworkRequestDetails.a(_Fields.RESPONSE_BODY_SIZE);
        if ((a || a2) && (!a || !a2 || this.response_body_size != clientNetworkRequestDetails.response_body_size)) {
            return false;
        }
        a = a(_Fields.SERVICE_MS);
        a2 = clientNetworkRequestDetails.a(_Fields.SERVICE_MS);
        if ((a || a2) && (!a || !a2 || this.service_ms != clientNetworkRequestDetails.service_ms)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode = Long.valueOf(this.duration_ms).hashCode() + 31;
        if (a(_Fields.STREAM_ID)) {
            hashCode = (hashCode * 31) + Integer.valueOf(this.stream_id).hashCode();
        }
        if (a(_Fields.RX_BYTES)) {
            hashCode = (hashCode * 31) + Long.valueOf(this.rx_bytes).hashCode();
        }
        if (a(_Fields.TX_BYTES)) {
            hashCode = (hashCode * 31) + Long.valueOf(this.tx_bytes).hashCode();
        }
        if (a(_Fields.LATENCY_MS)) {
            hashCode = (hashCode * 31) + Long.valueOf(this.latency_ms).hashCode();
        }
        if (a(_Fields.CONNECTED_MS)) {
            hashCode = (hashCode * 31) + Long.valueOf(this.connected_ms).hashCode();
        }
        if (a(_Fields.BLOCKED_MS)) {
            hashCode = (hashCode * 31) + Long.valueOf(this.blocked_ms).hashCode();
        }
        if (a(_Fields.REQUEST_BODY_SIZE)) {
            hashCode = (hashCode * 31) + Long.valueOf(this.request_body_size).hashCode();
        }
        if (a(_Fields.RESPONSE_BODY_SIZE)) {
            hashCode = (hashCode * 31) + Long.valueOf(this.response_body_size).hashCode();
        }
        if (a(_Fields.SERVICE_MS)) {
            return (hashCode * 31) + Long.valueOf(this.service_ms).hashCode();
        }
        return hashCode;
    }

    public int b(ClientNetworkRequestDetails clientNetworkRequestDetails) {
        if (!getClass().equals(clientNetworkRequestDetails.getClass())) {
            return getClass().getName().compareTo(clientNetworkRequestDetails.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.DURATION_MS)).compareTo(Boolean.valueOf(clientNetworkRequestDetails.a(_Fields.DURATION_MS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.DURATION_MS)) {
            compareTo = org.apache.thrift.a.a(this.duration_ms, clientNetworkRequestDetails.duration_ms);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.STREAM_ID)).compareTo(Boolean.valueOf(clientNetworkRequestDetails.a(_Fields.STREAM_ID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.STREAM_ID)) {
            compareTo = org.apache.thrift.a.a(this.stream_id, clientNetworkRequestDetails.stream_id);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.RX_BYTES)).compareTo(Boolean.valueOf(clientNetworkRequestDetails.a(_Fields.RX_BYTES)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.RX_BYTES)) {
            compareTo = org.apache.thrift.a.a(this.rx_bytes, clientNetworkRequestDetails.rx_bytes);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.TX_BYTES)).compareTo(Boolean.valueOf(clientNetworkRequestDetails.a(_Fields.TX_BYTES)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.TX_BYTES)) {
            compareTo = org.apache.thrift.a.a(this.tx_bytes, clientNetworkRequestDetails.tx_bytes);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.LATENCY_MS)).compareTo(Boolean.valueOf(clientNetworkRequestDetails.a(_Fields.LATENCY_MS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.LATENCY_MS)) {
            compareTo = org.apache.thrift.a.a(this.latency_ms, clientNetworkRequestDetails.latency_ms);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.CONNECTED_MS)).compareTo(Boolean.valueOf(clientNetworkRequestDetails.a(_Fields.CONNECTED_MS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.CONNECTED_MS)) {
            compareTo = org.apache.thrift.a.a(this.connected_ms, clientNetworkRequestDetails.connected_ms);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.BLOCKED_MS)).compareTo(Boolean.valueOf(clientNetworkRequestDetails.a(_Fields.BLOCKED_MS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.BLOCKED_MS)) {
            compareTo = org.apache.thrift.a.a(this.blocked_ms, clientNetworkRequestDetails.blocked_ms);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.REQUEST_BODY_SIZE)).compareTo(Boolean.valueOf(clientNetworkRequestDetails.a(_Fields.REQUEST_BODY_SIZE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.REQUEST_BODY_SIZE)) {
            compareTo = org.apache.thrift.a.a(this.request_body_size, clientNetworkRequestDetails.request_body_size);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.RESPONSE_BODY_SIZE)).compareTo(Boolean.valueOf(clientNetworkRequestDetails.a(_Fields.RESPONSE_BODY_SIZE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.RESPONSE_BODY_SIZE)) {
            compareTo = org.apache.thrift.a.a(this.response_body_size, clientNetworkRequestDetails.response_body_size);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SERVICE_MS)).compareTo(Boolean.valueOf(clientNetworkRequestDetails.a(_Fields.SERVICE_MS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SERVICE_MS)) {
            compareTo = org.apache.thrift.a.a(this.service_ms, clientNetworkRequestDetails.service_ms);
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
        dVar.a(this.duration_ms);
        dVar.b();
        if (a(_Fields.STREAM_ID)) {
            dVar.a(n);
            dVar.a(this.stream_id);
            dVar.b();
        }
        if (a(_Fields.RX_BYTES)) {
            dVar.a(o);
            dVar.a(this.rx_bytes);
            dVar.b();
        }
        if (a(_Fields.TX_BYTES)) {
            dVar.a(p);
            dVar.a(this.tx_bytes);
            dVar.b();
        }
        if (a(_Fields.LATENCY_MS)) {
            dVar.a(q);
            dVar.a(this.latency_ms);
            dVar.b();
        }
        if (a(_Fields.CONNECTED_MS)) {
            dVar.a(r);
            dVar.a(this.connected_ms);
            dVar.b();
        }
        if (a(_Fields.BLOCKED_MS)) {
            dVar.a(s);
            dVar.a(this.blocked_ms);
            dVar.b();
        }
        if (a(_Fields.REQUEST_BODY_SIZE)) {
            dVar.a(t);
            dVar.a(this.request_body_size);
            dVar.b();
        }
        if (a(_Fields.RESPONSE_BODY_SIZE)) {
            dVar.a(u);
            dVar.a(this.response_body_size);
            dVar.b();
        }
        if (a(_Fields.SERVICE_MS)) {
            dVar.a(v);
            dVar.a(this.service_ms);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ClientNetworkRequestDetails(");
        stringBuilder.append("duration_ms:");
        stringBuilder.append(this.duration_ms);
        if (a(_Fields.STREAM_ID)) {
            stringBuilder.append(", ");
            stringBuilder.append("stream_id:");
            stringBuilder.append(this.stream_id);
        }
        if (a(_Fields.RX_BYTES)) {
            stringBuilder.append(", ");
            stringBuilder.append("rx_bytes:");
            stringBuilder.append(this.rx_bytes);
        }
        if (a(_Fields.TX_BYTES)) {
            stringBuilder.append(", ");
            stringBuilder.append("tx_bytes:");
            stringBuilder.append(this.tx_bytes);
        }
        if (a(_Fields.LATENCY_MS)) {
            stringBuilder.append(", ");
            stringBuilder.append("latency_ms:");
            stringBuilder.append(this.latency_ms);
        }
        if (a(_Fields.CONNECTED_MS)) {
            stringBuilder.append(", ");
            stringBuilder.append("connected_ms:");
            stringBuilder.append(this.connected_ms);
        }
        if (a(_Fields.BLOCKED_MS)) {
            stringBuilder.append(", ");
            stringBuilder.append("blocked_ms:");
            stringBuilder.append(this.blocked_ms);
        }
        if (a(_Fields.REQUEST_BODY_SIZE)) {
            stringBuilder.append(", ");
            stringBuilder.append("request_body_size:");
            stringBuilder.append(this.request_body_size);
        }
        if (a(_Fields.RESPONSE_BODY_SIZE)) {
            stringBuilder.append(", ");
            stringBuilder.append("response_body_size:");
            stringBuilder.append(this.response_body_size);
        }
        if (a(_Fields.SERVICE_MS)) {
            stringBuilder.append(", ");
            stringBuilder.append("service_ms:");
            stringBuilder.append(this.service_ms);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
    }
}
