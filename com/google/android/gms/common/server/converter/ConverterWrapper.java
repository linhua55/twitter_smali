package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.a;

public class ConverterWrapper implements SafeParcelable {
    public static final a CREATOR;
    private final int a;
    private final StringToIntConverter b;

    static {
        CREATOR = new a();
    }

    ConverterWrapper(int i, StringToIntConverter stringToIntConverter) {
        this.a = i;
        this.b = stringToIntConverter;
    }

    private ConverterWrapper(StringToIntConverter stringToIntConverter) {
        this.a = 1;
        this.b = stringToIntConverter;
    }

    public static ConverterWrapper a(a<?, ?> aVar) {
        if (aVar instanceof StringToIntConverter) {
            return new ConverterWrapper((StringToIntConverter) aVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    int a() {
        return this.a;
    }

    StringToIntConverter b() {
        return this.b;
    }

    public a<?, ?> c() {
        if (this.b != null) {
            return this.b;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }

    public int describeContents() {
        a aVar = CREATOR;
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        a aVar = CREATOR;
        a.a(this, parcel, i);
    }
}
