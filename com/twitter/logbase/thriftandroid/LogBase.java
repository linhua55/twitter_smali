package com.twitter.logbase.thriftandroid;

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
import org.apache.thrift.meta_data.FieldMetaData;
import org.apache.thrift.meta_data.FieldValueMetaData;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.e;

/* compiled from: Twttr */
public class LogBase implements Serializable, Cloneable, TBase<LogBase, _Fields> {
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
    private long client_app_id;
    private String country;
    private String device_id;
    private boolean do_not_track;
    private long guest_id;
    private String ip_address;
    private boolean is_ssl;
    private String language;
    private String page;
    private String pid;
    private String referer;
    private long session_created_at;
    private String session_id;
    private long timestamp;
    private String transaction_id;
    private String user_agent;
    private long user_id;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        TRANSACTION_ID((short) 1, "transaction_id"),
        IP_ADDRESS((short) 2, "ip_address"),
        USER_ID((short) 3, "user_id"),
        GUEST_ID((short) 4, "guest_id"),
        TIMESTAMP((short) 5, "timestamp"),
        USER_AGENT((short) 6, "user_agent"),
        REFERER((short) 7, "referer"),
        LANGUAGE((short) 8, "language"),
        PAGE((short) 9, "page"),
        SESSION_ID((short) 10, "session_id"),
        SESSION_CREATED_AT((short) 11, "session_created_at"),
        CLIENT_APP_ID((short) 12, "client_app_id"),
        DEVICE_ID((short) 13, "device_id"),
        IS_SSL((short) 14, "is_ssl"),
        COUNTRY((short) 15, "country"),
        PID((short) 16, "pid"),
        DO_NOT_TRACK((short) 17, "do_not_track");
        
        private static final Map<String, _Fields> r;
        private final String _fieldName;
        private final short _thriftId;

        static {
            r = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_logbase_thriftandroid_LogBase__Fields = (_Fields) it.next();
                r.put(com_twitter_logbase_thriftandroid_LogBase__Fields.b(), com_twitter_logbase_thriftandroid_LogBase__Fields);
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
        return b((LogBase) obj);
    }

    static {
        s = new e("LogBase");
        t = new a("transaction_id", (byte) 11, (short) 1);
        u = new a("ip_address", (byte) 11, (short) 2);
        v = new a("user_id", (byte) 10, (short) 3);
        w = new a("guest_id", (byte) 10, (short) 4);
        x = new a("timestamp", (byte) 10, (short) 5);
        y = new a("user_agent", (byte) 11, (short) 6);
        z = new a("referer", (byte) 11, (short) 7);
        A = new a("language", (byte) 11, (short) 8);
        B = new a("page", (byte) 11, (short) 9);
        C = new a("session_id", (byte) 11, (short) 10);
        D = new a("session_created_at", (byte) 10, (short) 11);
        E = new a("client_app_id", (byte) 10, (short) 12);
        F = new a("device_id", (byte) 11, (short) 13);
        G = new a("is_ssl", (byte) 2, (short) 14);
        H = new a("country", (byte) 11, (short) 15);
        I = new a("pid", (byte) 11, (short) 16);
        J = new a("do_not_track", (byte) 2, (short) 17);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.TRANSACTION_ID, new FieldMetaData("transaction_id", (byte) 3, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.IP_ADDRESS, new FieldMetaData("ip_address", (byte) 3, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.USER_ID, new FieldMetaData("user_id", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.GUEST_ID, new FieldMetaData("guest_id", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.TIMESTAMP, new FieldMetaData("timestamp", (byte) 3, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.USER_AGENT, new FieldMetaData("user_agent", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.REFERER, new FieldMetaData("referer", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.LANGUAGE, new FieldMetaData("language", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.PAGE, new FieldMetaData("page", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.SESSION_ID, new FieldMetaData("session_id", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.SESSION_CREATED_AT, new FieldMetaData("session_created_at", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.CLIENT_APP_ID, new FieldMetaData("client_app_id", (byte) 2, new FieldValueMetaData((byte) 10)));
        enumMap.put(_Fields.DEVICE_ID, new FieldMetaData("device_id", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.IS_SSL, new FieldMetaData("is_ssl", (byte) 2, new FieldValueMetaData((byte) 2)));
        enumMap.put(_Fields.COUNTRY, new FieldMetaData("country", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.PID, new FieldMetaData("pid", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.DO_NOT_TRACK, new FieldMetaData("do_not_track", (byte) 2, new FieldValueMetaData((byte) 2)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(LogBase.class, a);
        b = _Fields.TRANSACTION_ID;
        c = _Fields.IP_ADDRESS;
        d = _Fields.USER_ID;
        e = _Fields.GUEST_ID;
        f = _Fields.TIMESTAMP;
        g = _Fields.USER_AGENT;
        h = _Fields.REFERER;
        i = _Fields.LANGUAGE;
        j = _Fields.PAGE;
        k = _Fields.SESSION_ID;
        l = _Fields.SESSION_CREATED_AT;
        m = _Fields.CLIENT_APP_ID;
        n = _Fields.DEVICE_ID;
        o = _Fields.IS_SSL;
        p = _Fields.COUNTRY;
        q = _Fields.PID;
        r = _Fields.DO_NOT_TRACK;
    }

    public LogBase() {
        this.__isset_bit_vector = new BitSet(7);
    }

    public boolean a(_Fields com_twitter_logbase_thriftandroid_LogBase__Fields) {
        switch (a.a[com_twitter_logbase_thriftandroid_LogBase__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.transaction_id != null) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.ip_address == null) {
                    return false;
                }
                return true;
            case Util.TYPE_OTHER /*3*/:
                return this.__isset_bit_vector.get(0);
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return this.__isset_bit_vector.get(1);
            case EbmlReader.TYPE_FLOAT /*5*/:
                return this.__isset_bit_vector.get(2);
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                if (this.user_agent == null) {
                    return false;
                }
                return true;
            case C.ENCODING_DTS /*7*/:
                if (this.referer == null) {
                    return false;
                }
                return true;
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                if (this.language == null) {
                    return false;
                }
                return true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                if (this.page == null) {
                    return false;
                }
                return true;
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                if (this.session_id == null) {
                    return false;
                }
                return true;
            case b.ShimmerFrameLayout_relative_width /*11*/:
                return this.__isset_bit_vector.get(3);
            case Atom.FULL_HEADER_SIZE /*12*/:
                return this.__isset_bit_vector.get(4);
            case b.ShimmerFrameLayout_shape /*13*/:
                if (this.device_id == null) {
                    return false;
                }
                return true;
            case b.ShimmerFrameLayout_tilt /*14*/:
                return this.__isset_bit_vector.get(5);
            case bdd.TwitterButton_strokeWidth /*15*/:
                if (this.country == null) {
                    return false;
                }
                return true;
            case Atom.LONG_HEADER_SIZE /*16*/:
                if (this.pid == null) {
                    return false;
                }
                return true;
            case bdd.TwitterButton_bounded /*17*/:
                return this.__isset_bit_vector.get(6);
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof LogBase)) {
            return a((LogBase) obj);
        }
        return false;
    }

    public boolean a(LogBase logBase) {
        if (logBase == null) {
            return false;
        }
        boolean a = a(_Fields.TRANSACTION_ID);
        boolean a2 = logBase.a(_Fields.TRANSACTION_ID);
        if ((a || a2) && (!a || !a2 || !this.transaction_id.equals(logBase.transaction_id))) {
            return false;
        }
        a = a(_Fields.IP_ADDRESS);
        a2 = logBase.a(_Fields.IP_ADDRESS);
        if ((a || a2) && (!a || !a2 || !this.ip_address.equals(logBase.ip_address))) {
            return false;
        }
        a = a(_Fields.USER_ID);
        a2 = logBase.a(_Fields.USER_ID);
        if ((a || a2) && (!a || !a2 || this.user_id != logBase.user_id)) {
            return false;
        }
        a = a(_Fields.GUEST_ID);
        a2 = logBase.a(_Fields.GUEST_ID);
        if (((a || a2) && (!a || !a2 || this.guest_id != logBase.guest_id)) || this.timestamp != logBase.timestamp) {
            return false;
        }
        a = a(_Fields.USER_AGENT);
        a2 = logBase.a(_Fields.USER_AGENT);
        if ((a || a2) && (!a || !a2 || !this.user_agent.equals(logBase.user_agent))) {
            return false;
        }
        a = a(_Fields.REFERER);
        a2 = logBase.a(_Fields.REFERER);
        if ((a || a2) && (!a || !a2 || !this.referer.equals(logBase.referer))) {
            return false;
        }
        a = a(_Fields.LANGUAGE);
        a2 = logBase.a(_Fields.LANGUAGE);
        if ((a || a2) && (!a || !a2 || !this.language.equals(logBase.language))) {
            return false;
        }
        a = a(_Fields.PAGE);
        a2 = logBase.a(_Fields.PAGE);
        if ((a || a2) && (!a || !a2 || !this.page.equals(logBase.page))) {
            return false;
        }
        a = a(_Fields.SESSION_ID);
        a2 = logBase.a(_Fields.SESSION_ID);
        if ((a || a2) && (!a || !a2 || !this.session_id.equals(logBase.session_id))) {
            return false;
        }
        a = a(_Fields.SESSION_CREATED_AT);
        a2 = logBase.a(_Fields.SESSION_CREATED_AT);
        if ((a || a2) && (!a || !a2 || this.session_created_at != logBase.session_created_at)) {
            return false;
        }
        a = a(_Fields.CLIENT_APP_ID);
        a2 = logBase.a(_Fields.CLIENT_APP_ID);
        if ((a || a2) && (!a || !a2 || this.client_app_id != logBase.client_app_id)) {
            return false;
        }
        a = a(_Fields.DEVICE_ID);
        a2 = logBase.a(_Fields.DEVICE_ID);
        if ((a || a2) && (!a || !a2 || !this.device_id.equals(logBase.device_id))) {
            return false;
        }
        a = a(_Fields.IS_SSL);
        a2 = logBase.a(_Fields.IS_SSL);
        if ((a || a2) && (!a || !a2 || this.is_ssl != logBase.is_ssl)) {
            return false;
        }
        a = a(_Fields.COUNTRY);
        a2 = logBase.a(_Fields.COUNTRY);
        if ((a || a2) && (!a || !a2 || !this.country.equals(logBase.country))) {
            return false;
        }
        a = a(_Fields.PID);
        a2 = logBase.a(_Fields.PID);
        if ((a || a2) && (!a || !a2 || !this.pid.equals(logBase.pid))) {
            return false;
        }
        a = a(_Fields.DO_NOT_TRACK);
        a2 = logBase.a(_Fields.DO_NOT_TRACK);
        if ((a || a2) && (!a || !a2 || this.do_not_track != logBase.do_not_track)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        if (a(_Fields.TRANSACTION_ID)) {
            i = this.transaction_id.hashCode() + 31;
        }
        if (a(_Fields.IP_ADDRESS)) {
            i = (i * 31) + this.ip_address.hashCode();
        }
        if (a(_Fields.USER_ID)) {
            i = (i * 31) + Long.valueOf(this.user_id).hashCode();
        }
        if (a(_Fields.GUEST_ID)) {
            i = (i * 31) + Long.valueOf(this.guest_id).hashCode();
        }
        i = (i * 31) + Long.valueOf(this.timestamp).hashCode();
        if (a(_Fields.USER_AGENT)) {
            i = (i * 31) + this.user_agent.hashCode();
        }
        if (a(_Fields.REFERER)) {
            i = (i * 31) + this.referer.hashCode();
        }
        if (a(_Fields.LANGUAGE)) {
            i = (i * 31) + this.language.hashCode();
        }
        if (a(_Fields.PAGE)) {
            i = (i * 31) + this.page.hashCode();
        }
        if (a(_Fields.SESSION_ID)) {
            i = (i * 31) + this.session_id.hashCode();
        }
        if (a(_Fields.SESSION_CREATED_AT)) {
            i = (i * 31) + Long.valueOf(this.session_created_at).hashCode();
        }
        if (a(_Fields.CLIENT_APP_ID)) {
            i = (i * 31) + Long.valueOf(this.client_app_id).hashCode();
        }
        if (a(_Fields.DEVICE_ID)) {
            i = (i * 31) + this.device_id.hashCode();
        }
        if (a(_Fields.IS_SSL)) {
            i = (i * 31) + Boolean.valueOf(this.is_ssl).hashCode();
        }
        if (a(_Fields.COUNTRY)) {
            i = (i * 31) + this.country.hashCode();
        }
        if (a(_Fields.PID)) {
            i = (i * 31) + this.pid.hashCode();
        }
        if (a(_Fields.DO_NOT_TRACK)) {
            return (i * 31) + Boolean.valueOf(this.do_not_track).hashCode();
        }
        return i;
    }

    public int b(LogBase logBase) {
        if (!getClass().equals(logBase.getClass())) {
            return getClass().getName().compareTo(logBase.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.TRANSACTION_ID)).compareTo(Boolean.valueOf(logBase.a(_Fields.TRANSACTION_ID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.TRANSACTION_ID)) {
            compareTo = org.apache.thrift.a.a(this.transaction_id, logBase.transaction_id);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.IP_ADDRESS)).compareTo(Boolean.valueOf(logBase.a(_Fields.IP_ADDRESS)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.IP_ADDRESS)) {
            compareTo = org.apache.thrift.a.a(this.ip_address, logBase.ip_address);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.USER_ID)).compareTo(Boolean.valueOf(logBase.a(_Fields.USER_ID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.USER_ID)) {
            compareTo = org.apache.thrift.a.a(this.user_id, logBase.user_id);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.GUEST_ID)).compareTo(Boolean.valueOf(logBase.a(_Fields.GUEST_ID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.GUEST_ID)) {
            compareTo = org.apache.thrift.a.a(this.guest_id, logBase.guest_id);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.TIMESTAMP)).compareTo(Boolean.valueOf(logBase.a(_Fields.TIMESTAMP)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.TIMESTAMP)) {
            compareTo = org.apache.thrift.a.a(this.timestamp, logBase.timestamp);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.USER_AGENT)).compareTo(Boolean.valueOf(logBase.a(_Fields.USER_AGENT)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.USER_AGENT)) {
            compareTo = org.apache.thrift.a.a(this.user_agent, logBase.user_agent);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.REFERER)).compareTo(Boolean.valueOf(logBase.a(_Fields.REFERER)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.REFERER)) {
            compareTo = org.apache.thrift.a.a(this.referer, logBase.referer);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.LANGUAGE)).compareTo(Boolean.valueOf(logBase.a(_Fields.LANGUAGE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.LANGUAGE)) {
            compareTo = org.apache.thrift.a.a(this.language, logBase.language);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.PAGE)).compareTo(Boolean.valueOf(logBase.a(_Fields.PAGE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.PAGE)) {
            compareTo = org.apache.thrift.a.a(this.page, logBase.page);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SESSION_ID)).compareTo(Boolean.valueOf(logBase.a(_Fields.SESSION_ID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SESSION_ID)) {
            compareTo = org.apache.thrift.a.a(this.session_id, logBase.session_id);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SESSION_CREATED_AT)).compareTo(Boolean.valueOf(logBase.a(_Fields.SESSION_CREATED_AT)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SESSION_CREATED_AT)) {
            compareTo = org.apache.thrift.a.a(this.session_created_at, logBase.session_created_at);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.CLIENT_APP_ID)).compareTo(Boolean.valueOf(logBase.a(_Fields.CLIENT_APP_ID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.CLIENT_APP_ID)) {
            compareTo = org.apache.thrift.a.a(this.client_app_id, logBase.client_app_id);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.DEVICE_ID)).compareTo(Boolean.valueOf(logBase.a(_Fields.DEVICE_ID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.DEVICE_ID)) {
            compareTo = org.apache.thrift.a.a(this.device_id, logBase.device_id);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.IS_SSL)).compareTo(Boolean.valueOf(logBase.a(_Fields.IS_SSL)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.IS_SSL)) {
            compareTo = org.apache.thrift.a.a(this.is_ssl, logBase.is_ssl);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.COUNTRY)).compareTo(Boolean.valueOf(logBase.a(_Fields.COUNTRY)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.COUNTRY)) {
            compareTo = org.apache.thrift.a.a(this.country, logBase.country);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.PID)).compareTo(Boolean.valueOf(logBase.a(_Fields.PID)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.PID)) {
            compareTo = org.apache.thrift.a.a(this.pid, logBase.pid);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.DO_NOT_TRACK)).compareTo(Boolean.valueOf(logBase.a(_Fields.DO_NOT_TRACK)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.DO_NOT_TRACK)) {
            compareTo = org.apache.thrift.a.a(this.do_not_track, logBase.do_not_track);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(s);
        if (this.transaction_id != null) {
            dVar.a(t);
            dVar.a(this.transaction_id);
            dVar.b();
        }
        if (this.ip_address != null) {
            dVar.a(u);
            dVar.a(this.ip_address);
            dVar.b();
        }
        if (a(_Fields.USER_ID)) {
            dVar.a(v);
            dVar.a(this.user_id);
            dVar.b();
        }
        if (a(_Fields.GUEST_ID)) {
            dVar.a(w);
            dVar.a(this.guest_id);
            dVar.b();
        }
        dVar.a(x);
        dVar.a(this.timestamp);
        dVar.b();
        if (this.user_agent != null && a(_Fields.USER_AGENT)) {
            dVar.a(y);
            dVar.a(this.user_agent);
            dVar.b();
        }
        if (this.referer != null && a(_Fields.REFERER)) {
            dVar.a(z);
            dVar.a(this.referer);
            dVar.b();
        }
        if (this.language != null && a(_Fields.LANGUAGE)) {
            dVar.a(A);
            dVar.a(this.language);
            dVar.b();
        }
        if (this.page != null && a(_Fields.PAGE)) {
            dVar.a(B);
            dVar.a(this.page);
            dVar.b();
        }
        if (this.session_id != null && a(_Fields.SESSION_ID)) {
            dVar.a(C);
            dVar.a(this.session_id);
            dVar.b();
        }
        if (a(_Fields.SESSION_CREATED_AT)) {
            dVar.a(D);
            dVar.a(this.session_created_at);
            dVar.b();
        }
        if (a(_Fields.CLIENT_APP_ID)) {
            dVar.a(E);
            dVar.a(this.client_app_id);
            dVar.b();
        }
        if (this.device_id != null && a(_Fields.DEVICE_ID)) {
            dVar.a(F);
            dVar.a(this.device_id);
            dVar.b();
        }
        if (a(_Fields.IS_SSL)) {
            dVar.a(G);
            dVar.a(this.is_ssl);
            dVar.b();
        }
        if (this.country != null && a(_Fields.COUNTRY)) {
            dVar.a(H);
            dVar.a(this.country);
            dVar.b();
        }
        if (this.pid != null && a(_Fields.PID)) {
            dVar.a(I);
            dVar.a(this.pid);
            dVar.b();
        }
        if (a(_Fields.DO_NOT_TRACK)) {
            dVar.a(J);
            dVar.a(this.do_not_track);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("LogBase(");
        stringBuilder.append("transaction_id:");
        if (this.transaction_id == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.transaction_id);
        }
        stringBuilder.append(", ");
        stringBuilder.append("ip_address:");
        if (this.ip_address == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.ip_address);
        }
        if (a(_Fields.USER_ID)) {
            stringBuilder.append(", ");
            stringBuilder.append("user_id:");
            stringBuilder.append(this.user_id);
        }
        if (a(_Fields.GUEST_ID)) {
            stringBuilder.append(", ");
            stringBuilder.append("guest_id:");
            stringBuilder.append(this.guest_id);
        }
        stringBuilder.append(", ");
        stringBuilder.append("timestamp:");
        stringBuilder.append(this.timestamp);
        if (a(_Fields.USER_AGENT)) {
            stringBuilder.append(", ");
            stringBuilder.append("user_agent:");
            if (this.user_agent == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.user_agent);
            }
        }
        if (a(_Fields.REFERER)) {
            stringBuilder.append(", ");
            stringBuilder.append("referer:");
            if (this.referer == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.referer);
            }
        }
        if (a(_Fields.LANGUAGE)) {
            stringBuilder.append(", ");
            stringBuilder.append("language:");
            if (this.language == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.language);
            }
        }
        if (a(_Fields.PAGE)) {
            stringBuilder.append(", ");
            stringBuilder.append("page:");
            if (this.page == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.page);
            }
        }
        if (a(_Fields.SESSION_ID)) {
            stringBuilder.append(", ");
            stringBuilder.append("session_id:");
            if (this.session_id == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.session_id);
            }
        }
        if (a(_Fields.SESSION_CREATED_AT)) {
            stringBuilder.append(", ");
            stringBuilder.append("session_created_at:");
            stringBuilder.append(this.session_created_at);
        }
        if (a(_Fields.CLIENT_APP_ID)) {
            stringBuilder.append(", ");
            stringBuilder.append("client_app_id:");
            stringBuilder.append(this.client_app_id);
        }
        if (a(_Fields.DEVICE_ID)) {
            stringBuilder.append(", ");
            stringBuilder.append("device_id:");
            if (this.device_id == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.device_id);
            }
        }
        if (a(_Fields.IS_SSL)) {
            stringBuilder.append(", ");
            stringBuilder.append("is_ssl:");
            stringBuilder.append(this.is_ssl);
        }
        if (a(_Fields.COUNTRY)) {
            stringBuilder.append(", ");
            stringBuilder.append("country:");
            if (this.country == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.country);
            }
        }
        if (a(_Fields.PID)) {
            stringBuilder.append(", ");
            stringBuilder.append("pid:");
            if (this.pid == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.pid);
            }
        }
        if (a(_Fields.DO_NOT_TRACK)) {
            stringBuilder.append(", ");
            stringBuilder.append("do_not_track:");
            stringBuilder.append(this.do_not_track);
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
    }
}
