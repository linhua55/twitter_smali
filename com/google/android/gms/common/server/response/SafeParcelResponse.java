package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.C;
import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.response.FastJsonResponse.Field;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.vg;
import com.google.android.gms.internal.vh;
import com.google.android.gms.internal.vr;
import com.google.android.gms.internal.vs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class SafeParcelResponse extends FastJsonResponse implements SafeParcelable {
    public static final f CREATOR;
    private final int a;
    private final Parcel b;
    private final int c;
    private final FieldMappingDictionary d;
    private final String e;
    private int f;
    private int g;

    static {
        CREATOR = new f();
    }

    SafeParcelResponse(int i, Parcel parcel, FieldMappingDictionary fieldMappingDictionary) {
        this.a = i;
        this.b = (Parcel) bm.a(parcel);
        this.c = 2;
        this.d = fieldMappingDictionary;
        if (this.d == null) {
            this.e = null;
        } else {
            this.e = this.d.d();
        }
        this.f = 2;
    }

    public static HashMap<String, String> a(Bundle bundle) {
        HashMap<String, String> hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    private static HashMap<Integer, Entry<String, Field<?, ?>>> a(Map<String, Field<?, ?>> map) {
        HashMap<Integer, Entry<String, Field<?, ?>>> hashMap = new HashMap();
        for (Entry entry : map.entrySet()) {
            hashMap.put(Integer.valueOf(((Field) entry.getValue()).g()), entry);
        }
        return hashMap;
    }

    private void a(StringBuilder stringBuilder, int i, Object obj) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
            case ModuleDescriptor.MODULE_VERSION /*1*/:
            case Buffer.FLAG_DECODE_ONLY /*2*/:
            case Util.TYPE_OTHER /*3*/:
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
            case EbmlReader.TYPE_FLOAT /*5*/:
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                stringBuilder.append(obj);
            case C.ENCODING_DTS /*7*/:
                stringBuilder.append("\"").append(vr.a(obj.toString())).append("\"");
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                stringBuilder.append("\"").append(vh.a((byte[]) obj)).append("\"");
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                stringBuilder.append("\"").append(vh.b((byte[]) obj));
                stringBuilder.append("\"");
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                vs.a(stringBuilder, (HashMap) obj);
            case b.ShimmerFrameLayout_relative_width /*11*/:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown type = " + i);
        }
    }

    private void a(StringBuilder stringBuilder, Field<?, ?> field, Parcel parcel, int i) {
        switch (field.d()) {
            case Util.TYPE_DASH /*0*/:
                a(stringBuilder, (Field) field, a(field, Integer.valueOf(zza.f(parcel, i))));
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a(stringBuilder, (Field) field, a(field, zza.j(parcel, i)));
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                a(stringBuilder, (Field) field, a(field, Long.valueOf(zza.h(parcel, i))));
            case Util.TYPE_OTHER /*3*/:
                a(stringBuilder, (Field) field, a(field, Float.valueOf(zza.k(parcel, i))));
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                a(stringBuilder, (Field) field, a(field, Double.valueOf(zza.m(parcel, i))));
            case EbmlReader.TYPE_FLOAT /*5*/:
                a(stringBuilder, (Field) field, a(field, zza.n(parcel, i)));
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                a(stringBuilder, (Field) field, a(field, Boolean.valueOf(zza.c(parcel, i))));
            case C.ENCODING_DTS /*7*/:
                a(stringBuilder, (Field) field, a(field, zza.o(parcel, i)));
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                a(stringBuilder, (Field) field, a(field, zza.r(parcel, i)));
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                a(stringBuilder, (Field) field, a(field, a(zza.q(parcel, i))));
            case b.ShimmerFrameLayout_relative_width /*11*/:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                throw new IllegalArgumentException("Unknown field out type = " + field.d());
        }
    }

    private void a(StringBuilder stringBuilder, Field<?, ?> field, Object obj) {
        if (field.c()) {
            a(stringBuilder, (Field) field, (ArrayList) obj);
        } else {
            a(stringBuilder, field.b(), obj);
        }
    }

    private void a(StringBuilder stringBuilder, Field<?, ?> field, ArrayList<?> arrayList) {
        stringBuilder.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            a(stringBuilder, field.b(), arrayList.get(i));
        }
        stringBuilder.append("]");
    }

    private void a(StringBuilder stringBuilder, String str, Field<?, ?> field, Parcel parcel, int i) {
        stringBuilder.append("\"").append(str).append("\":");
        if (field.j()) {
            a(stringBuilder, field, parcel, i);
        } else {
            b(stringBuilder, field, parcel, i);
        }
    }

    private void a(StringBuilder stringBuilder, Map<String, Field<?, ?>> map, Parcel parcel) {
        HashMap a = a((Map) map);
        stringBuilder.append('{');
        int b = zza.b(parcel);
        Object obj = null;
        while (parcel.dataPosition() < b) {
            int a2 = zza.a(parcel);
            Entry entry = (Entry) a.get(Integer.valueOf(zza.a(a2)));
            if (entry != null) {
                if (obj != null) {
                    stringBuilder.append(",");
                }
                a(stringBuilder, (String) entry.getKey(), (Field) entry.getValue(), parcel, a2);
                obj = 1;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zza.zza("Overread allowed size end=" + b, parcel);
        }
        stringBuilder.append('}');
    }

    private void b(StringBuilder stringBuilder, Field<?, ?> field, Parcel parcel, int i) {
        if (field.e()) {
            stringBuilder.append("[");
            switch (field.d()) {
                case Util.TYPE_DASH /*0*/:
                    vg.a(stringBuilder, zza.t(parcel, i));
                    break;
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    vg.a(stringBuilder, zza.v(parcel, i));
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    vg.a(stringBuilder, zza.u(parcel, i));
                    break;
                case Util.TYPE_OTHER /*3*/:
                    vg.a(stringBuilder, zza.w(parcel, i));
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    vg.a(stringBuilder, zza.x(parcel, i));
                    break;
                case EbmlReader.TYPE_FLOAT /*5*/:
                    vg.a(stringBuilder, zza.y(parcel, i));
                    break;
                case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                    vg.a(stringBuilder, zza.s(parcel, i));
                    break;
                case C.ENCODING_DTS /*7*/:
                    vg.a(stringBuilder, zza.z(parcel, i));
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                case b.ShimmerFrameLayout_fixed_height /*9*/:
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                case b.ShimmerFrameLayout_relative_width /*11*/:
                    Parcel[] D = zza.D(parcel, i);
                    int length = D.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        if (i2 > 0) {
                            stringBuilder.append(",");
                        }
                        D[i2].setDataPosition(0);
                        a(stringBuilder, field.l(), D[i2]);
                    }
                    break;
                default:
                    throw new IllegalStateException("Unknown field type out.");
            }
            stringBuilder.append("]");
            return;
        }
        switch (field.d()) {
            case Util.TYPE_DASH /*0*/:
                stringBuilder.append(zza.f(parcel, i));
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                stringBuilder.append(zza.j(parcel, i));
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                stringBuilder.append(zza.h(parcel, i));
            case Util.TYPE_OTHER /*3*/:
                stringBuilder.append(zza.k(parcel, i));
            case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                stringBuilder.append(zza.m(parcel, i));
            case EbmlReader.TYPE_FLOAT /*5*/:
                stringBuilder.append(zza.n(parcel, i));
            case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                stringBuilder.append(zza.c(parcel, i));
            case C.ENCODING_DTS /*7*/:
                stringBuilder.append("\"").append(vr.a(zza.o(parcel, i))).append("\"");
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                stringBuilder.append("\"").append(vh.a(zza.r(parcel, i))).append("\"");
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                stringBuilder.append("\"").append(vh.b(zza.r(parcel, i)));
                stringBuilder.append("\"");
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                Bundle q = zza.q(parcel, i);
                Set<String> keySet = q.keySet();
                keySet.size();
                stringBuilder.append("{");
                int i3 = 1;
                for (String str : keySet) {
                    if (i3 == 0) {
                        stringBuilder.append(",");
                    }
                    stringBuilder.append("\"").append(str).append("\"");
                    stringBuilder.append(":");
                    stringBuilder.append("\"").append(vr.a(q.getString(str))).append("\"");
                    i3 = 0;
                }
                stringBuilder.append("}");
            case b.ShimmerFrameLayout_relative_width /*11*/:
                Parcel C = zza.C(parcel, i);
                C.setDataPosition(0);
                a(stringBuilder, field.l(), C);
            default:
                throw new IllegalStateException("Unknown field type out");
        }
    }

    protected Object a(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public Map<String, Field<?, ?>> a() {
        return this.d == null ? null : this.d.a(this.e);
    }

    protected boolean b(String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    public int d() {
        return this.a;
    }

    public int describeContents() {
        f fVar = CREATOR;
        return 0;
    }

    public Parcel e() {
        switch (this.f) {
            case Util.TYPE_DASH /*0*/:
                this.g = a.a(this.b);
                a.a(this.b, this.g);
                this.f = 2;
                break;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a.a(this.b, this.g);
                this.f = 2;
                break;
        }
        return this.b;
    }

    FieldMappingDictionary f() {
        switch (this.c) {
            case Util.TYPE_DASH /*0*/:
                return null;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.d;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return this.d;
            default:
                throw new IllegalStateException("Invalid creation type: " + this.c);
        }
    }

    public String toString() {
        bm.a(this.d, "Cannot convert to JSON on client side.");
        Parcel e = e();
        e.setDataPosition(0);
        StringBuilder stringBuilder = new StringBuilder(100);
        a(stringBuilder, this.d.a(this.e), e);
        return stringBuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        f fVar = CREATOR;
        f.a(this, parcel, i);
    }
}
