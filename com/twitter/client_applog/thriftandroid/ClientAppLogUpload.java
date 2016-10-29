package com.twitter.client_applog.thriftandroid;

import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.client_network.thriftandroid.ClientNetworkRequest;
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
public class ClientAppLogUpload implements Serializable, Cloneable, TBase<ClientAppLogUpload, _Fields> {
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
    private VersionedCommonHeader commonHeader;
    private String logUrl;
    private String problemCategory;
    private String problemDescription;
    private ClientNetworkRequest request;
    private String screenName;

    /* compiled from: Twttr */
    public enum _Fields implements d {
        COMMON_HEADER((short) 1, "commonHeader"),
        REQUEST((short) 2, "request"),
        LOG_URL((short) 3, "logUrl"),
        PROBLEM_CATEGORY((short) 4, "problemCategory"),
        PROBLEM_DESCRIPTION((short) 5, "problemDescription"),
        SCREEN_NAME((short) 6, "screenName");
        
        private static final Map<String, _Fields> g;
        private final String _fieldName;
        private final short _thriftId;

        static {
            g = new HashMap();
            Iterator it = EnumSet.allOf(_Fields.class).iterator();
            while (it.hasNext()) {
                _Fields com_twitter_client_applog_thriftandroid_ClientAppLogUpload__Fields = (_Fields) it.next();
                g.put(com_twitter_client_applog_thriftandroid_ClientAppLogUpload__Fields.b(), com_twitter_client_applog_thriftandroid_ClientAppLogUpload__Fields);
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
        return b((ClientAppLogUpload) obj);
    }

    static {
        h = new e("ClientAppLogUpload");
        i = new a("commonHeader", (byte) 12, (short) 1);
        j = new a("request", (byte) 12, (short) 2);
        k = new a("logUrl", (byte) 11, (short) 3);
        l = new a("problemCategory", (byte) 11, (short) 4);
        m = new a("problemDescription", (byte) 11, (short) 5);
        n = new a("screenName", (byte) 11, (short) 6);
        Map enumMap = new EnumMap(_Fields.class);
        enumMap.put(_Fields.COMMON_HEADER, new FieldMetaData("commonHeader", (byte) 1, new StructMetaData((byte) 12, VersionedCommonHeader.class)));
        enumMap.put(_Fields.REQUEST, new FieldMetaData("request", (byte) 2, new StructMetaData((byte) 12, ClientNetworkRequest.class)));
        enumMap.put(_Fields.LOG_URL, new FieldMetaData("logUrl", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.PROBLEM_CATEGORY, new FieldMetaData("problemCategory", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.PROBLEM_DESCRIPTION, new FieldMetaData("problemDescription", (byte) 2, new FieldValueMetaData((byte) 11)));
        enumMap.put(_Fields.SCREEN_NAME, new FieldMetaData("screenName", (byte) 2, new FieldValueMetaData((byte) 11)));
        a = Collections.unmodifiableMap(enumMap);
        FieldMetaData.a(ClientAppLogUpload.class, a);
        b = _Fields.COMMON_HEADER;
        c = _Fields.REQUEST;
        d = _Fields.LOG_URL;
        e = _Fields.PROBLEM_CATEGORY;
        f = _Fields.PROBLEM_DESCRIPTION;
        g = _Fields.SCREEN_NAME;
    }

    public ClientAppLogUpload(VersionedCommonHeader versionedCommonHeader, ClientNetworkRequest clientNetworkRequest, String str, String str2, String str3, String str4) {
        this();
        if (versionedCommonHeader != null) {
            this.commonHeader = versionedCommonHeader;
        }
        if (clientNetworkRequest != null) {
            this.request = clientNetworkRequest;
        }
        if (str != null) {
            this.logUrl = str;
        }
        if (str2 != null) {
            this.problemCategory = str2;
        }
        if (str3 != null) {
            this.problemDescription = str3;
        }
        if (str4 != null) {
            this.screenName = str4;
        }
    }

    public boolean a(_Fields com_twitter_client_applog_thriftandroid_ClientAppLogUpload__Fields) {
        switch (a.a[com_twitter_client_applog_thriftandroid_ClientAppLogUpload__Fields.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                if (this.commonHeader != null) {
                    return true;
                }
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (this.request == null) {
                    return false;
                }
                return true;
            case Util.TYPE_OTHER /*3*/:
                if (this.logUrl == null) {
                    return false;
                }
                return true;
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                if (this.problemCategory == null) {
                    return false;
                }
                return true;
            case EbmlReader.TYPE_FLOAT /*5*/:
                if (this.problemDescription == null) {
                    return false;
                }
                return true;
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                return this.screenName != null;
            default:
                throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ClientAppLogUpload)) {
            return a((ClientAppLogUpload) obj);
        }
        return false;
    }

    public boolean a(ClientAppLogUpload clientAppLogUpload) {
        if (clientAppLogUpload == null) {
            return false;
        }
        boolean a = a(_Fields.COMMON_HEADER);
        boolean a2 = clientAppLogUpload.a(_Fields.COMMON_HEADER);
        if ((a || a2) && (!a || !a2 || !this.commonHeader.a(clientAppLogUpload.commonHeader))) {
            return false;
        }
        a = a(_Fields.REQUEST);
        a2 = clientAppLogUpload.a(_Fields.REQUEST);
        if ((a || a2) && (!a || !a2 || !this.request.a(clientAppLogUpload.request))) {
            return false;
        }
        a = a(_Fields.LOG_URL);
        a2 = clientAppLogUpload.a(_Fields.LOG_URL);
        if ((a || a2) && (!a || !a2 || !this.logUrl.equals(clientAppLogUpload.logUrl))) {
            return false;
        }
        a = a(_Fields.PROBLEM_CATEGORY);
        a2 = clientAppLogUpload.a(_Fields.PROBLEM_CATEGORY);
        if ((a || a2) && (!a || !a2 || !this.problemCategory.equals(clientAppLogUpload.problemCategory))) {
            return false;
        }
        a = a(_Fields.PROBLEM_DESCRIPTION);
        a2 = clientAppLogUpload.a(_Fields.PROBLEM_DESCRIPTION);
        if ((a || a2) && (!a || !a2 || !this.problemDescription.equals(clientAppLogUpload.problemDescription))) {
            return false;
        }
        a = a(_Fields.SCREEN_NAME);
        a2 = clientAppLogUpload.a(_Fields.SCREEN_NAME);
        if ((a || a2) && (!a || !a2 || !this.screenName.equals(clientAppLogUpload.screenName))) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i = 1;
        if (a(_Fields.COMMON_HEADER)) {
            i = this.commonHeader.hashCode() + 31;
        }
        if (a(_Fields.REQUEST)) {
            i = (i * 31) + this.request.hashCode();
        }
        if (a(_Fields.LOG_URL)) {
            i = (i * 31) + this.logUrl.hashCode();
        }
        if (a(_Fields.PROBLEM_CATEGORY)) {
            i = (i * 31) + this.problemCategory.hashCode();
        }
        if (a(_Fields.PROBLEM_DESCRIPTION)) {
            i = (i * 31) + this.problemDescription.hashCode();
        }
        if (a(_Fields.SCREEN_NAME)) {
            return (i * 31) + this.screenName.hashCode();
        }
        return i;
    }

    public int b(ClientAppLogUpload clientAppLogUpload) {
        if (!getClass().equals(clientAppLogUpload.getClass())) {
            return getClass().getName().compareTo(clientAppLogUpload.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a(_Fields.COMMON_HEADER)).compareTo(Boolean.valueOf(clientAppLogUpload.a(_Fields.COMMON_HEADER)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.COMMON_HEADER)) {
            compareTo = org.apache.thrift.a.a(this.commonHeader, clientAppLogUpload.commonHeader);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.REQUEST)).compareTo(Boolean.valueOf(clientAppLogUpload.a(_Fields.REQUEST)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.REQUEST)) {
            compareTo = org.apache.thrift.a.a(this.request, clientAppLogUpload.request);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.LOG_URL)).compareTo(Boolean.valueOf(clientAppLogUpload.a(_Fields.LOG_URL)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.LOG_URL)) {
            compareTo = org.apache.thrift.a.a(this.logUrl, clientAppLogUpload.logUrl);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.PROBLEM_CATEGORY)).compareTo(Boolean.valueOf(clientAppLogUpload.a(_Fields.PROBLEM_CATEGORY)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.PROBLEM_CATEGORY)) {
            compareTo = org.apache.thrift.a.a(this.problemCategory, clientAppLogUpload.problemCategory);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.PROBLEM_DESCRIPTION)).compareTo(Boolean.valueOf(clientAppLogUpload.a(_Fields.PROBLEM_DESCRIPTION)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.PROBLEM_DESCRIPTION)) {
            compareTo = org.apache.thrift.a.a(this.problemDescription, clientAppLogUpload.problemDescription);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        compareTo = Boolean.valueOf(a(_Fields.SCREEN_NAME)).compareTo(Boolean.valueOf(clientAppLogUpload.a(_Fields.SCREEN_NAME)));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a(_Fields.SCREEN_NAME)) {
            compareTo = org.apache.thrift.a.a(this.screenName, clientAppLogUpload.screenName);
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return 0;
    }

    public void a(org.apache.thrift.protocol.d dVar) throws TException {
        a();
        dVar.a(h);
        if (this.commonHeader != null) {
            dVar.a(i);
            this.commonHeader.a(dVar);
            dVar.b();
        }
        if (this.request != null && a(_Fields.REQUEST)) {
            dVar.a(j);
            this.request.a(dVar);
            dVar.b();
        }
        if (this.logUrl != null && a(_Fields.LOG_URL)) {
            dVar.a(k);
            dVar.a(this.logUrl);
            dVar.b();
        }
        if (this.problemCategory != null && a(_Fields.PROBLEM_CATEGORY)) {
            dVar.a(l);
            dVar.a(this.problemCategory);
            dVar.b();
        }
        if (this.problemDescription != null && a(_Fields.PROBLEM_DESCRIPTION)) {
            dVar.a(m);
            dVar.a(this.problemDescription);
            dVar.b();
        }
        if (this.screenName != null && a(_Fields.SCREEN_NAME)) {
            dVar.a(n);
            dVar.a(this.screenName);
            dVar.b();
        }
        dVar.c();
        dVar.a();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder("ClientAppLogUpload(");
        stringBuilder.append("commonHeader:");
        if (this.commonHeader == null) {
            stringBuilder.append("null");
        } else {
            stringBuilder.append(this.commonHeader);
        }
        if (a(_Fields.REQUEST)) {
            stringBuilder.append(", ");
            stringBuilder.append("request:");
            if (this.request == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.request);
            }
        }
        if (a(_Fields.LOG_URL)) {
            stringBuilder.append(", ");
            stringBuilder.append("logUrl:");
            if (this.logUrl == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.logUrl);
            }
        }
        if (a(_Fields.PROBLEM_CATEGORY)) {
            stringBuilder.append(", ");
            stringBuilder.append("problemCategory:");
            if (this.problemCategory == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.problemCategory);
            }
        }
        if (a(_Fields.PROBLEM_DESCRIPTION)) {
            stringBuilder.append(", ");
            stringBuilder.append("problemDescription:");
            if (this.problemDescription == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.problemDescription);
            }
        }
        if (a(_Fields.SCREEN_NAME)) {
            stringBuilder.append(", ");
            stringBuilder.append("screenName:");
            if (this.screenName == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append(this.screenName);
            }
        }
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public void a() throws TException {
        if (this.commonHeader == null) {
            throw new TProtocolException("Required field 'commonHeader' was not present! Struct: " + toString());
        }
    }
}
