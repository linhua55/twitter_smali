package com.twitter.client_network.thriftandroid;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;
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
import org.apache.thrift.meta_data.StructMetaData;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.e;

/* compiled from: Twttr */
public class ClientNetworkRequest implements Serializable, Cloneable, TBase<ClientNetworkRequest, _Fields> {
    private static final a A;
    private static final a B;
    private static final a C;
    private static final a D;
    private static final a E;
    private static final a F;
    private static final a G;
    private static final a H;
    private static final a I;
    private static final a J;
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
    public static final _Fields n;
    public static final _Fields o;
    public static final _Fields p;
    public static final _Fields q;
    public static final _Fields r;
    private static final e s;
    private static final a t;
    private static final a u;
    private static final a v;
    private static final a w;
    private static final a x;
    private static final a y;
    private static final a z;
    private BitSet __isset_bit_vector;
    private String client_error_info;
    private ClientNetworkStatus end_network_status;
    private String http_method;
    private int http_status_code;
    private String protocol;
    private ClientNetworkProxyStatus proxy_status;
    private ClientNetworkRequestDetails request_details;
    private ClientNetworkResponseSource response_source;
    private String server_ip;
    private String server_name;
    private ClientNetworkStatus start_network_status;
    private int twitter_api_error_code;
    private String uri_host_name;
    private String uri_path;
    private String uri_query;
    private String uri_scheme;
    private boolean via_proxy;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        URI_SCHEME((short) 1, "uri_scheme"),
        URI_HOST_NAME((short) 2, "uri_host_name"),
        URI_PATH((short) 3, "uri_path"),
        HTTP_METHOD((short) 4, "http_method"),
        PROTOCOL((short) 5, "protocol"),
        START_NETWORK_STATUS((short) 6, "start_network_status"),
        END_NETWORK_STATUS((short) 7, "end_network_status"),
        SERVER_NAME((short) 8, "server_name"),
        SERVER_IP((short) 9, "server_ip"),
        HTTP_STATUS_CODE((short) 10, "http_status_code"),
        TWITTER_API_ERROR_CODE((short) 11, "twitter_api_error_code"),
        CLIENT_ERROR_INFO((short) 12, "client_error_info"),
        RESPONSE_SOURCE((short) 13, "response_source"),
        REQUEST_DETAILS((short) 14, "request_details"),
        PROXY_STATUS((short) 15, "proxy_status"),
        VIA_PROXY((short) 16, "via_proxy"),
        URI_QUERY((short) 17, "uri_query");
        
        private static final Map<String, _Fields> r;
        private final String _fieldName;
        private final short _thriftId;

        static {
            r = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_client_network_thriftandroid_ClientNetworkRequest__Fields = (_Fields) it.next();
                r.put(com_twitter_client_network_thriftandroid_ClientNetworkRequest__Fields.b(), com_twitter_client_network_thriftandroid_ClientNetworkRequest__Fields);
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
        return b((ClientNetworkRequest) obj);
    }

    static {
        s = new e("ClientNetworkRequest");
        t = new a("uri_scheme", (byte) 11, (short) 1);
        u = new a("uri_host_name", (byte) 11, (short) 2);
        v = new a("uri_path", (byte) 11, (short) 3);
        w = new a("http_method", (byte) 11, (short) 4);
        x = new a("protocol", (byte) 11, (short) 5);
        y = new a("start_network_status", (byte) 12, (short) 6);
        z = new a("end_network_status", (byte) 12, (short) 7);
        A = new a("server_name", (byte) 11, (short) 8);
        B = new a("server_ip", (byte) 11, (short) 9);
        C = new a("http_status_code", (byte) 8, (short) 10);
        D = new a("twitter_api_error_code", (byte) 8, (short) 11);
        E = new a("client_error_info", (byte) 11, (short) 12);
        F = new a("response_source", (byte) 8, (short) 13);
        G = new a("request_details", (byte) 12, (short) 14);
        H = new a("proxy_status", (byte) 8, (short) 15);
        I = new a("via_proxy", (byte) 2, (short) 16);
        J = new a("uri_query", (byte) 11, (short) 17);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.URI_SCHEME, new FieldMetaData("uri_scheme", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.URI_HOST_NAME, new FieldMetaData("uri_host_name", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.URI_PATH, new FieldMetaData("uri_path", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.HTTP_METHOD, new FieldMetaData("http_method", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.PROTOCOL, new FieldMetaData("protocol", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.START_NETWORK_STATUS, new FieldMetaData("start_network_status", (byte) 2, new StructMetaData((byte) 12, ClientNetworkStatus.class)));
        enumMap.put(_Fields.END_NETWORK_STATUS, new FieldMetaData("end_network_status", (byte) 2, new StructMetaData((byte) 12, ClientNetworkStatus.class)));
        enumMap.put(_Fields.SERVER_NAME, new FieldMetaData("server_name", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.SERVER_IP, new FieldMetaData("server_ip", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.HTTP_STATUS_CODE, new FieldMetaData("http_status_code", (byte) 2, new FieldValueMetaData((byte) 8)));
        enumMap.put(_Fields.TWITTER_API_ERROR_CODE, new FieldMetaData("twitter_api_error_code", (byte) 2, new FieldValueMetaData((byte) 8)));
        enumMap.put(_Fields.CLIENT_ERROR_INFO, new FieldMetaData("client_error_info", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.RESPONSE_SOURCE, new FieldMetaData("response_source", (byte) 2, new EnumMetaData((byte) 16, ClientNetworkResponseSource.class)));
        enumMap.put(_Fields.REQUEST_DETAILS, new FieldMetaData("request_details", (byte) 1, new StructMetaData((byte) 12, ClientNetworkRequestDetails.class)));
        enumMap.put(_Fields.PROXY_STATUS, new FieldMetaData("proxy_status", (byte) 2, new EnumMetaData((byte) 16, ClientNetworkProxyStatus.class)));
        enumMap.put(_Fields.VIA_PROXY, new FieldMetaData("via_proxy", (byte) 2, new FieldValueMetaData((byte) 2)));
        enumMap.put(_Fields.URI_QUERY, new FieldMetaData("uri_query", (byte) 2, new FieldValueMetaData((byte) 11)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(ClientNetworkRequest.class, a);
        b = _Fields.URI_SCHEME;
        c = _Fields.URI_HOST_NAME;
        d = _Fields.URI_PATH;
        e = _Fields.HTTP_METHOD;
        f = _Fields.PROTOCOL;
        g = _Fields.START_NETWORK_STATUS;
        h = _Fields.END_NETWORK_STATUS;
        i = _Fields.SERVER_NAME;
        j = _Fields.SERVER_IP;
        k = _Fields.HTTP_STATUS_CODE;
        l = _Fields.TWITTER_API_ERROR_CODE;
        m = _Fields.CLIENT_ERROR_INFO;
        n = _Fields.RESPONSE_SOURCE;
        o = _Fields.REQUEST_DETAILS;
        p = _Fields.PROXY_STATUS;
        q = _Fields.VIA_PROXY;
        r = _Fields.URI_QUERY;
    }

    public ClientNetworkRequest() {
        this.__isset_bit_vector = new BitSet(3);
    }

    public ClientNetworkRequest(String str, String str2, String str3, String str4, String str5, ClientNetworkStatus clientNetworkStatus, ClientNetworkStatus clientNetworkStatus2, String str6, String str7, Integer num, Integer num2, String str8, ClientNetworkResponseSource clientNetworkResponseSource, ClientNetworkRequestDetails clientNetworkRequestDetails, ClientNetworkProxyStatus clientNetworkProxyStatus, Boolean bool, String str9) {
        this();
        if (str != null) {
            this.uri_scheme = str;
        }
        if (str2 != null) {
            this.uri_host_name = str2;
        }
        if (str3 != null) {
            this.uri_path = str3;
        }
        if (str4 != null) {
            this.http_method = str4;
        }
        if (str5 != null) {
            this.protocol = str5;
        }
        if (clientNetworkStatus != null) {
            this.start_network_status = clientNetworkStatus;
        }
        if (clientNetworkStatus2 != null) {
            this.end_network_status = clientNetworkStatus2;
        }
        if (str6 != null) {
            this.server_name = str6;
        }
        if (str7 != null) {
            this.server_ip = str7;
        }
        if (num != null) {
            this.http_status_code = num.intValue();
            this.__isset_bit_vector.set(0, true);
        }
        if (num2 != null) {
            this.twitter_api_error_code = num2.intValue();
            this.__isset_bit_vector.set(1, true);
        }
        if (str8 != null) {
            this.client_error_info = str8;
        }
        if (clientNetworkResponseSource != null) {
            this.response_source = clientNetworkResponseSource;
        }
        if (clientNetworkRequestDetails != null) {
            this.request_details = clientNetworkRequestDetails;
        }
        if (clientNetworkProxyStatus != null) {
            this.proxy_status = clientNetworkProxyStatus;
        }
        if (bool != null) {
            this.via_proxy = bool.booleanValue();
            this.__isset_bit_vector.set(2, true);
        }
        if (str9 != null) {
            this.uri_query = str9;
        }
    }

    public boolean a(_Fields com_twitter_client_network_thriftandroid_ClientNetworkRequest__Fields) {
        switch (a.a[com_twitter_client_network_thriftandroid_ClientNetworkRequest__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.uri_scheme != null) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.uri_host_name == null) {
                    return false;
                }
                return true;
            case Util.TYPE_OTHER /*3*/:
                if (this.uri_path == null) {
                    return false;
                }
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (this.http_method == null) {
                    return false;
                }
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (this.protocol == null) {
                    return false;
                }
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (this.start_network_status == null) {
                    return false;
                }
                return true;
            case C.ENCODING_DTS /*7*/:
                if (this.end_network_status == null) {
                    return false;
                }
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                if (this.server_name == null) {
                    return false;
                }
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                if (this.server_ip == null) {
                    return false;
                }
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                return this.__isset_bit_vector.get(0);
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return this.__isset_bit_vector.get(1);
            case Atom.FULL_HEADER_SIZE /*12*/:
                if (this.client_error_info == null) {
                    return false;
                }
                return true;
            case b.ShimmerFrameLayout_shape /*13*/:
                if (this.response_source == null) {
                    return false;
                }
                return true;
            case b.ShimmerFrameLayout_tilt /*14*/:
                if (this.request_details == null) {
                    return false;
                }
                return true;
            case bdd.TwitterButton_strokeWidth /*15*/:
                if (this.proxy_status == null) {
                    return false;
                }
                return true;
            case Atom.LONG_HEADER_SIZE /*16*/:
                return this.__isset_bit_vector.get(2);
            case bdd.TwitterButton_bounded /*17*/:
                return this.uri_query != null;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ClientNetworkRequest)) {
            return a((ClientNetworkRequest) obj);
        }
        return false;
    }

    public boolean a(ClientNetworkRequest clientNetworkRequest) {
        if (clientNetworkRequest == null) {
            return false;
        }
        boolean a = a(_Fields.URI_SCHEME);
        boolean a2 = clientNetworkRequest.a(_Fields.URI_SCHEME);
        if ((a || a2) && (!a || !a2 || !this.uri_scheme.equals(clientNetworkRequest.uri_scheme))) {
            return false;
        }
        a = a(_Fields.URI_HOST_NAME);
        a2 = clientNetworkRequest.a(_Fields.URI_HOST_NAME);
        if ((a || a2) && (!a || !a2 || !this.uri_host_name.equals(clientNetworkRequest.uri_host_name))) {
            return false;
        }
        a = a(_Fields.URI_PATH);
        a2 = clientNetworkRequest.a(_Fields.URI_PATH);
        if ((a || a2) && (!a || !a2 || !this.uri_path.equals(clientNetworkRequest.uri_path))) {
            return false;
        }
        a = a(_Fields.HTTP_METHOD);
        a2 = clientNetworkRequest.a(_Fields.HTTP_METHOD);
        if ((a || a2) && (!a || !a2 || !this.http_method.equals(clientNetworkRequest.http_method))) {
            return false;
        }
        a = a(_Fields.PROTOCOL);
        a2 = clientNetworkRequest.a(_Fields.PROTOCOL);
        if ((a || a2) && (!a || !a2 || !this.protocol.equals(clientNetworkRequest.protocol))) {
            return false;
        }
        a = a(_Fields.START_NETWORK_STATUS);
        a2 = clientNetworkRequest.a(_Fields.START_NETWORK_STATUS);
        if ((a || a2) && (!a || !a2 || !this.start_network_status.a(clientNetworkRequest.start_network_status))) {
            return false;
        }
        a = a(_Fields.END_NETWORK_STATUS);
        a2 = clientNetworkRequest.a(_Fields.END_NETWORK_STATUS);
        if ((a || a2) && (!a || !a2 || !this.end_network_status.a(clientNetworkRequest.end_network_status))) {
            return false;
        }
        a = a(_Fields.SERVER_NAME);
        a2 = clientNetworkRequest.a(_Fields.SERVER_NAME);
        if ((a || a2) && (!a || !a2 || !this.server_name.equals(clientNetworkRequest.server_name))) {
            return false;
        }
        a = a(_Fields.SERVER_IP);
        a2 = clientNetworkRequest.a(_Fields.SERVER_IP);
        if ((a || a2) && (!a || !a2 || !this.server_ip.equals(clientNetworkRequest.server_ip))) {
            return false;
        }
        a = a(_Fields.HTTP_STATUS_CODE);
        a2 = clientNetworkRequest.a(_Fields.HTTP_STATUS_CODE);
        if ((a || a2) && (!a || !a2 || this.http_status_code != clientNetworkRequest.http_status_code)) {
            return false;
        }
        a = a(_Fields.TWITTER_API_ERROR_CODE);
        a2 = clientNetworkRequest.a(_Fields.TWITTER_API_ERROR_CODE);
        if ((a || a2) && (!a || !a2 || this.twitter_api_error_code != clientNetworkRequest.twitter_api_error_code)) {
            return false;
        }
        a = a(_Fields.CLIENT_ERROR_INFO);
        a2 = clientNetworkRequest.a(_Fields.CLIENT_ERROR_INFO);
        if ((a || a2) && (!a || !a2 || !this.client_error_info.equals(clientNetworkRequest.client_error_info))) {
            return false;
        }
        a = a(_Fields.RESPONSE_SOURCE);
        a2 = clientNetworkRequest.a(_Fields.RESPONSE_SOURCE);
        if ((a || a2) && (!a || !a2 || !this.response_source.equals(clientNetworkRequest.response_source))) {
            return false;
        }
        a = a(_Fields.REQUEST_DETAILS);
        a2 = clientNetworkRequest.a(_Fields.REQUEST_DETAILS);
        if ((a || a2) && (!a || !a2 || !this.request_details.a(clientNetworkRequest.request_details))) {
            return false;
        }
        a = a(_Fields.PROXY_STATUS);
        a2 = clientNetworkRequest.a(_Fields.PROXY_STATUS);
        if ((a || a2) && (!a || !a2 || !this.proxy_status.equals(clientNetworkRequest.proxy_status))) {
            return false;
        }
        a = a(_Fields.VIA_PROXY);
        a2 = clientNetworkRequest.a(_Fields.VIA_PROXY);
        if ((a || a2) && (!a || !a2 || this.via_proxy != clientNetworkRequest.via_proxy)) {
            return false;
        }
        a = a(_Fields.URI_QUERY);
        a2 = clientNetworkRequest.a(_Fields.URI_QUERY);
        if ((a || a2) && (!a || !a2 || !this.uri_query.equals(clientNetworkRequest.uri_query))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        if (a(_Fields.URI_SCHEME)) {
            i = this.uri_scheme.hashCode() + 31;
        }
        if (a(_Fields.URI_HOST_NAME)) {
            i = (i * 31) + this.uri_host_name.hashCode();
        }
        if (a(_Fields.URI_PATH)) {
            i = (i * 31) + this.uri_path.hashCode();
        }
        if (a(_Fields.HTTP_METHOD)) {
            i = (i * 31) + this.http_method.hashCode();
        }
        if (a(_Fields.PROTOCOL)) {
            i = (i * 31) + this.protocol.hashCode();
        }
        if (a(_Fields.START_NETWORK_STATUS)) {
            i = (i * 31) + this.start_network_status.hashCode();
        }
        if (a(_Fields.END_NETWORK_STATUS)) {
            i = (i * 31) + this.end_network_status.hashCode();
        }
        if (a(_Fields.SERVER_NAME)) {
            i = (i * 31) + this.server_name.hashCode();
        }
        if (a(_Fields.SERVER_IP)) {
            i = (i * 31) + this.server_ip.hashCode();
        }
        if (a(_Fields.HTTP_STATUS_CODE)) {
            i = (i * 31) + Integer.valueOf(this.http_status_code).hashCode();
        }
        if (a(_Fields.TWITTER_API_ERROR_CODE)) {
            i = (i * 31) + Integer.valueOf(this.twitter_api_error_code).hashCode();
        }
        if (a(_Fields.CLIENT_ERROR_INFO)) {
            i = (i * 31) + this.client_error_info.hashCode();
        }
        if (a(_Fields.RESPONSE_SOURCE)) {
            i = (i * 31) + this.response_source.hashCode();
        }
        if (a(_Fields.REQUEST_DETAILS)) {
            i = (i * 31) + this.request_details.hashCode();
        }
        if (a(_Fields.PROXY_STATUS)) {
            i = (i * 31) + this.proxy_status.hashCode();
        }
        if (a(_Fields.VIA_PROXY)) {
            i = (i * 31) + Boolean.valueOf(this.via_proxy).hashCode();
        }
        if (a(_Fields.URI_QUERY)) {
            return (i * 31) + this.uri_query.hashCode();
        }
        return i;
    }

    public int b(ClientNetworkRequest clientNetworkRequest) {
        if (!getClass().equals(clientNetworkRequest.getClass())) {
            return getClass().getName().compareTo(clientNetworkRequest.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.URI_SCHEME)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.URI_SCHEME)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.URI_SCHEME)) {
            compareTo = org.apache.thrift.a.a(this.uri_scheme, clientNetworkRequest.uri_scheme);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.URI_HOST_NAME)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.URI_HOST_NAME)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.URI_HOST_NAME)) {
            compareTo = org.apache.thrift.a.a(this.uri_host_name, clientNetworkRequest.uri_host_name);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.URI_PATH)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.URI_PATH)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.URI_PATH)) {
            compareTo = org.apache.thrift.a.a(this.uri_path, clientNetworkRequest.uri_path);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.HTTP_METHOD)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.HTTP_METHOD)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.HTTP_METHOD)) {
            compareTo = org.apache.thrift.a.a(this.http_method, clientNetworkRequest.http_method);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.PROTOCOL)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.PROTOCOL)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.PROTOCOL)) {
            compareTo = org.apache.thrift.a.a(this.protocol, clientNetworkRequest.protocol);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.START_NETWORK_STATUS)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.START_NETWORK_STATUS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.START_NETWORK_STATUS)) {
            compareTo = org.apache.thrift.a.a(this.start_network_status, clientNetworkRequest.start_network_status);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.END_NETWORK_STATUS)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.END_NETWORK_STATUS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.END_NETWORK_STATUS)) {
            compareTo = org.apache.thrift.a.a(this.end_network_status, clientNetworkRequest.end_network_status);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SERVER_NAME)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.SERVER_NAME)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SERVER_NAME)) {
            compareTo = org.apache.thrift.a.a(this.server_name, clientNetworkRequest.server_name);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SERVER_IP)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.SERVER_IP)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SERVER_IP)) {
            compareTo = org.apache.thrift.a.a(this.server_ip, clientNetworkRequest.server_ip);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.HTTP_STATUS_CODE)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.HTTP_STATUS_CODE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.HTTP_STATUS_CODE)) {
            compareTo = org.apache.thrift.a.a(this.http_status_code, clientNetworkRequest.http_status_code);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.TWITTER_API_ERROR_CODE)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.TWITTER_API_ERROR_CODE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.TWITTER_API_ERROR_CODE)) {
            compareTo = org.apache.thrift.a.a(this.twitter_api_error_code, clientNetworkRequest.twitter_api_error_code);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.CLIENT_ERROR_INFO)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.CLIENT_ERROR_INFO)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.CLIENT_ERROR_INFO)) {
            compareTo = org.apache.thrift.a.a(this.client_error_info, clientNetworkRequest.client_error_info);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.RESPONSE_SOURCE)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.RESPONSE_SOURCE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.RESPONSE_SOURCE)) {
            compareTo = org.apache.thrift.a.a(this.response_source, clientNetworkRequest.response_source);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.REQUEST_DETAILS)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.REQUEST_DETAILS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.REQUEST_DETAILS)) {
            compareTo = org.apache.thrift.a.a(this.request_details, clientNetworkRequest.request_details);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.PROXY_STATUS)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.PROXY_STATUS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.PROXY_STATUS)) {
            compareTo = org.apache.thrift.a.a(this.proxy_status, clientNetworkRequest.proxy_status);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.VIA_PROXY)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.VIA_PROXY)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.VIA_PROXY)) {
            compareTo = org.apache.thrift.a.a(this.via_proxy, clientNetworkRequest.via_proxy);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.URI_QUERY)).compareTo(Boolean.valueOf(clientNetworkRequest.a(_Fields.URI_QUERY)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.URI_QUERY)) {
            compareTo = org.apache.thrift.a.a(this.uri_query, clientNetworkRequest.uri_query);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(s);
        if (this.uri_scheme != null) {
            dVar.a(t);
            dVar.a(this.uri_scheme);
            dVar.b();
        }
        if (this.uri_host_name != null) {
            dVar.a(u);
            dVar.a(this.uri_host_name);
            dVar.b();
        }
        if (this.uri_path != null) {
            dVar.a(v);
            dVar.a(this.uri_path);
            dVar.b();
        }
        if (this.http_method != null) {
            dVar.a(w);
            dVar.a(this.http_method);
            dVar.b();
        }
        if (this.protocol != null && a(_Fields.PROTOCOL)) {
            dVar.a(x);
            dVar.a(this.protocol);
            dVar.b();
        }
        if (this.start_network_status != null && a(_Fields.START_NETWORK_STATUS)) {
            dVar.a(y);
            this.start_network_status.a(dVar);
            dVar.b();
        }
        if (this.end_network_status != null && a(_Fields.END_NETWORK_STATUS)) {
            dVar.a(z);
            this.end_network_status.a(dVar);
            dVar.b();
        }
        if (this.server_name != null && a(_Fields.SERVER_NAME)) {
            dVar.a(A);
            dVar.a(this.server_name);
            dVar.b();
        }
        if (this.server_ip != null && a(_Fields.SERVER_IP)) {
            dVar.a(B);
            dVar.a(this.server_ip);
            dVar.b();
        }
        if (a(_Fields.HTTP_STATUS_CODE)) {
            dVar.a(C);
            dVar.a(this.http_status_code);
            dVar.b();
        }
        if (a(_Fields.TWITTER_API_ERROR_CODE)) {
            dVar.a(D);
            dVar.a(this.twitter_api_error_code);
            dVar.b();
        }
        if (this.client_error_info != null && a(_Fields.CLIENT_ERROR_INFO)) {
            dVar.a(E);
            dVar.a(this.client_error_info);
            dVar.b();
        }
        if (this.response_source != null && a(_Fields.RESPONSE_SOURCE)) {
            dVar.a(F);
            dVar.a(this.response_source.a());
            dVar.b();
        }
        if (this.request_details != null) {
            dVar.a(G);
            this.request_details.a(dVar);
            dVar.b();
        }
        if (this.proxy_status != null && a(_Fields.PROXY_STATUS)) {
            dVar.a(H);
            dVar.a(this.proxy_status.a());
            dVar.b();
        }
        if (a(_Fields.VIA_PROXY)) {
            dVar.a(I);
            dVar.a(this.via_proxy);
            dVar.b();
        }
        if (this.uri_query != null && a(_Fields.URI_QUERY)) {
            dVar.a(J);
            dVar.a(this.uri_query);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ClientNetworkRequest(");
        stringBuilder.append("uri_scheme:");
        if (this.uri_scheme == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.uri_scheme);
        }
        stringBuilder.append(", ");
        stringBuilder.append("uri_host_name:");
        if (this.uri_host_name == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.uri_host_name);
        }
        stringBuilder.append(", ");
        stringBuilder.append("uri_path:");
        if (this.uri_path == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.uri_path);
        }
        stringBuilder.append(", ");
        stringBuilder.append("http_method:");
        if (this.http_method == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.http_method);
        }
        if (a(_Fields.PROTOCOL)) {
            stringBuilder.append(", ");
            stringBuilder.append("protocol:");
            if (this.protocol == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.protocol);
            }
        }
        if (a(_Fields.START_NETWORK_STATUS)) {
            stringBuilder.append(", ");
            stringBuilder.append("start_network_status:");
            if (this.start_network_status == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.start_network_status);
            }
        }
        if (a(_Fields.END_NETWORK_STATUS)) {
            stringBuilder.append(", ");
            stringBuilder.append("end_network_status:");
            if (this.end_network_status == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.end_network_status);
            }
        }
        if (a(_Fields.SERVER_NAME)) {
            stringBuilder.append(", ");
            stringBuilder.append("server_name:");
            if (this.server_name == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.server_name);
            }
        }
        if (a(_Fields.SERVER_IP)) {
            stringBuilder.append(", ");
            stringBuilder.append("server_ip:");
            if (this.server_ip == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.server_ip);
            }
        }
        if (a(_Fields.HTTP_STATUS_CODE)) {
            stringBuilder.append(", ");
            stringBuilder.append("http_status_code:");
            stringBuilder.append(this.http_status_code);
        }
        if (a(_Fields.TWITTER_API_ERROR_CODE)) {
            stringBuilder.append(", ");
            stringBuilder.append("twitter_api_error_code:");
            stringBuilder.append(this.twitter_api_error_code);
        }
        if (a(_Fields.CLIENT_ERROR_INFO)) {
            stringBuilder.append(", ");
            stringBuilder.append("client_error_info:");
            if (this.client_error_info == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.client_error_info);
            }
        }
        if (a(_Fields.RESPONSE_SOURCE)) {
            stringBuilder.append(", ");
            stringBuilder.append("response_source:");
            if (this.response_source == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.response_source);
            }
        }
        stringBuilder.append(", ");
        stringBuilder.append("request_details:");
        if (this.request_details == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.request_details);
        }
        if (a(_Fields.PROXY_STATUS)) {
            stringBuilder.append(", ");
            stringBuilder.append("proxy_status:");
            if (this.proxy_status == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.proxy_status);
            }
        }
        if (a(_Fields.VIA_PROXY)) {
            stringBuilder.append(", ");
            stringBuilder.append("via_proxy:");
            stringBuilder.append(this.via_proxy);
        }
        if (a(_Fields.URI_QUERY)) {
            stringBuilder.append(", ");
            stringBuilder.append("uri_query:");
            if (this.uri_query == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.uri_query);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
        if (this.uri_scheme == null) {
            throw new TProtocolException("Required field 'uri_scheme' was not present! Struct: " + toString());
        } else if (this.uri_host_name == null) {
            throw new TProtocolException("Required field 'uri_host_name' was not present! Struct: " + toString());
        } else if (this.uri_path == null) {
            throw new TProtocolException("Required field 'uri_path' was not present! Struct: " + toString());
        } else if (this.http_method == null) {
            throw new TProtocolException("Required field 'http_method' was not present! Struct: " + toString());
        } else if (this.request_details == null) {
            throw new TProtocolException("Required field 'request_details' was not present! Struct: " + toString());
        }
    }
}
