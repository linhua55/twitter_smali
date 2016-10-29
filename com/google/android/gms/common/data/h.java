package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

public class h implements Creator<DataHolder> {
    static void a(DataHolder dataHolder, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, dataHolder.c(), false);
        a.a(parcel, (int) ExoPlayerImplInternal.MSG_SEEK_COMPLETE, dataHolder.b());
        a.a(parcel, 2, dataHolder.d(), i, false);
        a.a(parcel, 3, dataHolder.e());
        a.a(parcel, 4, dataHolder.f(), false);
        a.a(parcel, a);
    }

    public DataHolder a(Parcel parcel) {
        int i = 0;
        Bundle bundle = null;
        int b = zza.b(parcel);
        CursorWindow[] cursorWindowArr = null;
        String[] strArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = zza.a(parcel);
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    strArr = zza.z(parcel, a);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    cursorWindowArr = (CursorWindow[]) zza.b(parcel, a, CursorWindow.CREATOR);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    i = zza.f(parcel, a);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    bundle = zza.q(parcel, a);
                    break;
                case ExoPlayerImplInternal.MSG_SEEK_COMPLETE /*1000*/:
                    i2 = zza.f(parcel, a);
                    break;
                default:
                    zza.b(parcel, a);
                    break;
            }
        }
        if (parcel.dataPosition() != b) {
            throw new zza.zza("Overread allowed size end=" + b, parcel);
        }
        DataHolder dataHolder = new DataHolder(i2, strArr, cursorWindowArr, i, bundle);
        dataHolder.a();
        return dataHolder;
    }

    public DataHolder[] a(int i) {
        return new DataHolder[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
