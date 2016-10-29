package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.playlog.internal.PlayLoggerContext;

public class h implements Creator<LogEventParcelable> {
    static void a(LogEventParcelable logEventParcelable, Parcel parcel, int i) {
        int a = a.a(parcel);
        a.a(parcel, 1, logEventParcelable.a);
        a.a(parcel, 2, logEventParcelable.b, i, false);
        a.a(parcel, 3, logEventParcelable.c, false);
        a.a(parcel, 4, logEventParcelable.d, false);
        a.a(parcel, a);
    }

    public LogEventParcelable a(Parcel parcel) {
        int[] iArr = null;
        int b = zza.b(parcel);
        int i = 0;
        byte[] bArr = null;
        PlayLoggerContext playLoggerContext = null;
        while (parcel.dataPosition() < b) {
            byte[] bArr2;
            PlayLoggerContext playLoggerContext2;
            int f;
            int[] iArr2;
            int a = zza.a(parcel);
            int[] iArr3;
            switch (zza.a(a)) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    iArr3 = iArr;
                    bArr2 = bArr;
                    playLoggerContext2 = playLoggerContext;
                    f = zza.f(parcel, a);
                    iArr2 = iArr3;
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    f = i;
                    byte[] bArr3 = bArr;
                    playLoggerContext2 = (PlayLoggerContext) zza.a(parcel, a, PlayLoggerContext.CREATOR);
                    iArr2 = iArr;
                    bArr2 = bArr3;
                    break;
                case Util.TYPE_OTHER /*3*/:
                    playLoggerContext2 = playLoggerContext;
                    f = i;
                    iArr3 = iArr;
                    bArr2 = zza.r(parcel, a);
                    iArr2 = iArr3;
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    iArr2 = zza.t(parcel, a);
                    bArr2 = bArr;
                    playLoggerContext2 = playLoggerContext;
                    f = i;
                    break;
                default:
                    zza.b(parcel, a);
                    iArr2 = iArr;
                    bArr2 = bArr;
                    playLoggerContext2 = playLoggerContext;
                    f = i;
                    break;
            }
            i = f;
            playLoggerContext = playLoggerContext2;
            bArr = bArr2;
            iArr = iArr2;
        }
        if (parcel.dataPosition() == b) {
            return new LogEventParcelable(i, playLoggerContext, bArr, iArr);
        }
        throw new zza.zza("Overread allowed size end=" + b, parcel);
    }

    public LogEventParcelable[] a(int i) {
        return new LogEventParcelable[i];
    }

    public /* synthetic */ Object createFromParcel(Parcel parcel) {
        return a(parcel);
    }

    public /* synthetic */ Object[] newArray(int i) {
        return a(i);
    }
}
