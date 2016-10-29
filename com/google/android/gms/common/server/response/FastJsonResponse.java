package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.internal.vh;
import com.google.android.gms.internal.vr;
import com.google.android.gms.internal.vs;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class FastJsonResponse {

    public class Field<I, O> implements SafeParcelable {
        public static final b CREATOR;
        protected final int a;
        protected final boolean b;
        protected final int c;
        protected final boolean d;
        protected final String e;
        protected final int f;
        protected final Class<? extends FastJsonResponse> g;
        protected final String h;
        private final int i;
        private FieldMappingDictionary j;
        private a<I, O> k;

        static {
            CREATOR = new b();
        }

        Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, ConverterWrapper converterWrapper) {
            this.i = i;
            this.a = i2;
            this.b = z;
            this.c = i3;
            this.d = z2;
            this.e = str;
            this.f = i4;
            if (str2 == null) {
                this.g = null;
                this.h = null;
            } else {
                this.g = SafeParcelResponse.class;
                this.h = str2;
            }
            if (converterWrapper == null) {
                this.k = null;
            } else {
                this.k = converterWrapper.c();
            }
        }

        public int a() {
            return this.i;
        }

        public I a(O o) {
            return this.k.a(o);
        }

        public void a(FieldMappingDictionary fieldMappingDictionary) {
            this.j = fieldMappingDictionary;
        }

        public int b() {
            return this.a;
        }

        public boolean c() {
            return this.b;
        }

        public int d() {
            return this.c;
        }

        public int describeContents() {
            b bVar = CREATOR;
            return 0;
        }

        public boolean e() {
            return this.d;
        }

        public String f() {
            return this.e;
        }

        public int g() {
            return this.f;
        }

        public Class<? extends FastJsonResponse> h() {
            return this.g;
        }

        String i() {
            return this.h == null ? null : this.h;
        }

        public boolean j() {
            return this.k != null;
        }

        ConverterWrapper k() {
            return this.k == null ? null : ConverterWrapper.a(this.k);
        }

        public Map<String, Field<?, ?>> l() {
            bm.a(this.h);
            bm.a(this.j);
            return this.j.a(this.h);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Field\n");
            stringBuilder.append("            versionCode=").append(this.i).append('\n');
            stringBuilder.append("                 typeIn=").append(this.a).append('\n');
            stringBuilder.append("            typeInArray=").append(this.b).append('\n');
            stringBuilder.append("                typeOut=").append(this.c).append('\n');
            stringBuilder.append("           typeOutArray=").append(this.d).append('\n');
            stringBuilder.append("        outputFieldName=").append(this.e).append('\n');
            stringBuilder.append("      safeParcelFieldId=").append(this.f).append('\n');
            stringBuilder.append("       concreteTypeName=").append(i()).append('\n');
            if (h() != null) {
                stringBuilder.append("     concreteType.class=").append(h().getCanonicalName()).append('\n');
            }
            stringBuilder.append("          converterName=").append(this.k == null ? "null" : this.k.getClass().getCanonicalName()).append('\n');
            return stringBuilder.toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            b bVar = CREATOR;
            b.a(this, parcel, i);
        }
    }

    private void a(StringBuilder stringBuilder, Field field, Object obj) {
        if (field.b() == 11) {
            stringBuilder.append(((FastJsonResponse) field.h().cast(obj)).toString());
        } else if (field.b() == 7) {
            stringBuilder.append("\"");
            stringBuilder.append(vr.a((String) obj));
            stringBuilder.append("\"");
        } else {
            stringBuilder.append(obj);
        }
    }

    private void a(StringBuilder stringBuilder, Field field, ArrayList<Object> arrayList) {
        stringBuilder.append("[");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                stringBuilder.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                a(stringBuilder, field, obj);
            }
        }
        stringBuilder.append("]");
    }

    protected <O, I> I a(Field<I, O> field, Object obj) {
        return field.k != null ? field.a(obj) : obj;
    }

    protected abstract Object a(String str);

    public abstract Map<String, Field<?, ?>> a();

    protected boolean a(Field field) {
        return field.d() == 11 ? field.e() ? d(field.f()) : c(field.f()) : b(field.f());
    }

    protected Object b(Field field) {
        String f = field.f();
        if (field.h() == null) {
            return a(field.f());
        }
        bm.a(a(field.f()) == null, "Concrete field shouldn't be value object: %s", new Object[]{field.f()});
        Map c = field.e() ? c() : b();
        if (c != null) {
            return c.get(f);
        }
        try {
            return getClass().getMethod("get" + Character.toUpperCase(f.charAt(0)) + f.substring(1), new Class[0]).invoke(this, new Object[0]);
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public HashMap<String, Object> b() {
        return null;
    }

    protected abstract boolean b(String str);

    public HashMap<String, Object> c() {
        return null;
    }

    protected boolean c(String str) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean d(String str) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }

    public String toString() {
        Map a = a();
        StringBuilder stringBuilder = new StringBuilder(100);
        for (String str : a.keySet()) {
            Field field = (Field) a.get(str);
            if (a(field)) {
                Object a2 = a(field, b(field));
                if (stringBuilder.length() == 0) {
                    stringBuilder.append("{");
                } else {
                    stringBuilder.append(",");
                }
                stringBuilder.append("\"").append(str).append("\":");
                if (a2 != null) {
                    switch (field.d()) {
                        case ChunkHeader.SIZE_IN_BYTES /*8*/:
                            stringBuilder.append("\"").append(vh.a((byte[]) a2)).append("\"");
                            break;
                        case b.ShimmerFrameLayout_fixed_height /*9*/:
                            stringBuilder.append("\"").append(vh.b((byte[]) a2)).append("\"");
                            break;
                        case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                            vs.a(stringBuilder, (HashMap) a2);
                            break;
                        default:
                            if (!field.c()) {
                                a(stringBuilder, field, a2);
                                break;
                            }
                            a(stringBuilder, field, (ArrayList) a2);
                            break;
                    }
                }
                stringBuilder.append("null");
            }
        }
        if (stringBuilder.length() > 0) {
            stringBuilder.append("}");
        } else {
            stringBuilder.append("{}");
        }
        return stringBuilder.toString();
    }
}
