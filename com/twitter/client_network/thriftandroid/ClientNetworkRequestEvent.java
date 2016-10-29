package com.twitter.client_network.thriftandroid;

import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.common_header.thriftandroid.VersionedCommonHeader;
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
import org.apache.thrift.meta_data.FieldMetaData;
import org.apache.thrift.meta_data.FieldValueMetaData;
import org.apache.thrift.meta_data.StructMetaData;
import org.apache.thrift.protocol.TProtocolException;
import org.apache.thrift.protocol.a;
import org.apache.thrift.protocol.e;

/* compiled from: Twttr */
public class ClientNetworkRequestEvent implements Serializable, Cloneable, TBase<ClientNetworkRequestEvent, _Fields> {
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
    private VersionedCommonHeader common_header;
    private String event_source;
    private String event_type;
    private ClientNetworkRequest request;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        COMMON_HEADER((short) 1, "common_header"),
        EVENT_TYPE((short) 2, "event_type"),
        REQUEST((short) 3, "request"),
        EVENT_SOURCE((short) 4, "event_source");
        
        private static final Map<String, _Fields> e;
        private final String _fieldName;
        private final short _thriftId;

        static {
            e = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_client_network_thriftandroid_ClientNetworkRequestEvent__Fields = (_Fields) it.next();
                e.put(com_twitter_client_network_thriftandroid_ClientNetworkRequestEvent__Fields.b(), com_twitter_client_network_thriftandroid_ClientNetworkRequestEvent__Fields);
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
        return b((ClientNetworkRequestEvent) obj);
    }

    static {
        f = new e("ClientNetworkRequestEvent");
        g = new a("common_header", (byte) 12, (short) 1);
        h = new a("event_type", (byte) 11, (short) 2);
        i = new a("request", (byte) 12, (short) 3);
        j = new a("event_source", (byte) 11, (short) 4);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.COMMON_HEADER, new FieldMetaData("common_header", (byte) 1, new StructMetaData((byte) 12, VersionedCommonHeader.class)));
        enumMap.put(_Fields.EVENT_TYPE, new FieldMetaData("event_type", (byte) 1, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.REQUEST, new FieldMetaData("request", (byte) 1, new StructMetaData((byte) 12, ClientNetworkRequest.class)));
        enumMap.put(_Fields.EVENT_SOURCE, new FieldMetaData("event_source", (byte) 2, new FieldValueMetaData((byte) 11)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(ClientNetworkRequestEvent.class, a);
        b = _Fields.COMMON_HEADER;
        c = _Fields.EVENT_TYPE;
        d = _Fields.REQUEST;
        e = _Fields.EVENT_SOURCE;
    }

    public ClientNetworkRequestEvent(VersionedCommonHeader versionedCommonHeader, String str, ClientNetworkRequest clientNetworkRequest, String str2) {
        this();
        if (versionedCommonHeader != null) {
            this.common_header = versionedCommonHeader;
        }
        if (str != null) {
            this.event_type = str;
        }
        if (clientNetworkRequest != null) {
            this.request = clientNetworkRequest;
        }
        if (str2 != null) {
            this.event_source = str2;
        }
    }

    public boolean a(_Fields com_twitter_client_network_thriftandroid_ClientNetworkRequestEvent__Fields) {
        switch (e.a[com_twitter_client_network_thriftandroid_ClientNetworkRequestEvent__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.common_header != null) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.event_type == null) {
                    return false;
                }
                return true;
            case Util.TYPE_OTHER /*3*/:
                if (this.request == null) {
                    return false;
                }
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                return this.event_source != null;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ClientNetworkRequestEvent)) {
            return a((ClientNetworkRequestEvent) obj);
        }
        return false;
    }

    public boolean a(ClientNetworkRequestEvent clientNetworkRequestEvent) {
        if (clientNetworkRequestEvent == null) {
            return false;
        }
        boolean a = a(_Fields.COMMON_HEADER);
        boolean a2 = clientNetworkRequestEvent.a(_Fields.COMMON_HEADER);
        if ((a || a2) && (!a || !a2 || !this.common_header.a(clientNetworkRequestEvent.common_header))) {
            return false;
        }
        a = a(_Fields.EVENT_TYPE);
        a2 = clientNetworkRequestEvent.a(_Fields.EVENT_TYPE);
        if ((a || a2) && (!a || !a2 || !this.event_type.equals(clientNetworkRequestEvent.event_type))) {
            return false;
        }
        a = a(_Fields.REQUEST);
        a2 = clientNetworkRequestEvent.a(_Fields.REQUEST);
        if ((a || a2) && (!a || !a2 || !this.request.a(clientNetworkRequestEvent.request))) {
            return false;
        }
        a = a(_Fields.EVENT_SOURCE);
        a2 = clientNetworkRequestEvent.a(_Fields.EVENT_SOURCE);
        if ((a || a2) && (!a || !a2 || !this.event_source.equals(clientNetworkRequestEvent.event_source))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        if (a(_Fields.COMMON_HEADER)) {
            i = this.common_header.hashCode() + 31;
        }
        if (a(_Fields.EVENT_TYPE)) {
            i = (i * 31) + this.event_type.hashCode();
        }
        if (a(_Fields.REQUEST)) {
            i = (i * 31) + this.request.hashCode();
        }
        if (a(_Fields.EVENT_SOURCE)) {
            return (i * 31) + this.event_source.hashCode();
        }
        return i;
    }

    public int b(ClientNetworkRequestEvent clientNetworkRequestEvent) {
        if (!getClass().equals(clientNetworkRequestEvent.getClass())) {
            return getClass().getName().compareTo(clientNetworkRequestEvent.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.COMMON_HEADER)).compareTo(Boolean.valueOf(clientNetworkRequestEvent.a(_Fields.COMMON_HEADER)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.COMMON_HEADER)) {
            compareTo = org.apache.thrift.a.a(this.common_header, clientNetworkRequestEvent.common_header);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.EVENT_TYPE)).compareTo(Boolean.valueOf(clientNetworkRequestEvent.a(_Fields.EVENT_TYPE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.EVENT_TYPE)) {
            compareTo = org.apache.thrift.a.a(this.event_type, clientNetworkRequestEvent.event_type);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.REQUEST)).compareTo(Boolean.valueOf(clientNetworkRequestEvent.a(_Fields.REQUEST)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.REQUEST)) {
            compareTo = org.apache.thrift.a.a(this.request, clientNetworkRequestEvent.request);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.EVENT_SOURCE)).compareTo(Boolean.valueOf(clientNetworkRequestEvent.a(_Fields.EVENT_SOURCE)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.EVENT_SOURCE)) {
            compareTo = org.apache.thrift.a.a(this.event_source, clientNetworkRequestEvent.event_source);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(f);
        if (this.common_header != null) {
            dVar.a(g);
            this.common_header.a(dVar);
            dVar.b();
        }
        if (this.event_type != null) {
            dVar.a(h);
            dVar.a(this.event_type);
            dVar.b();
        }
        if (this.request != null) {
            dVar.a(i);
            this.request.a(dVar);
            dVar.b();
        }
        if (this.event_source != null && a(_Fields.EVENT_SOURCE)) {
            dVar.a(j);
            dVar.a(this.event_source);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ClientNetworkRequestEvent(");
        stringBuilder.append("common_header:");
        if (this.common_header == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.common_header);
        }
        stringBuilder.append(", ");
        stringBuilder.append("event_type:");
        if (this.event_type == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.event_type);
        }
        stringBuilder.append(", ");
        stringBuilder.append("request:");
        if (this.request == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.request);
        }
        if (a(_Fields.EVENT_SOURCE)) {
            stringBuilder.append(", ");
            stringBuilder.append("event_source:");
            if (this.event_source == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.event_source);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
        if (this.common_header == null) {
            throw new TProtocolException("Required field 'common_header' was not present! Struct: " + toString());
        } else if (this.event_type == null) {
            throw new TProtocolException("Required field 'event_type' was not present! Struct: " + toString());
        } else if (this.request == null) {
            throw new TProtocolException("Required field 'request' was not present! Struct: " + toString());
        }
    }
}
