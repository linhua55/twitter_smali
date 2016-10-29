package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.ParcelFileDescriptor.AutoCloseOutputStream;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.vq;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.IOException;

@oi
public final class LargeParcelTeleporter implements SafeParcelable {
    public static final Creator<LargeParcelTeleporter> CREATOR;
    final int a;
    ParcelFileDescriptor b;
    private Parcelable c;
    private boolean d;

    static {
        CREATOR = new aa();
    }

    LargeParcelTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor) {
        this.a = i;
        this.b = parcelFileDescriptor;
        this.c = null;
        this.d = true;
    }

    public LargeParcelTeleporter(SafeParcelable safeParcelable) {
        this.a = 1;
        this.b = null;
        this.c = safeParcelable;
        this.d = false;
    }

    protected <T> ParcelFileDescriptor a(byte[] bArr) {
        Throwable e;
        ParcelFileDescriptor parcelFileDescriptor = null;
        Closeable autoCloseOutputStream;
        try {
            ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new AutoCloseOutputStream(createPipe[1]);
            try {
                new Thread(new b(this, autoCloseOutputStream, bArr)).start();
                return createPipe[0];
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            e = e3;
            autoCloseOutputStream = parcelFileDescriptor;
            b.b("Error transporting the ad response", e);
            ar.h().a(e, true);
            vq.a(autoCloseOutputStream);
            return parcelFileDescriptor;
        }
    }

    public <T extends SafeParcelable> T a(Creator<T> creator) {
        if (this.d) {
            if (this.b == null) {
                b.b("File descriptor is empty, returning null.");
                return null;
            }
            Closeable dataInputStream = new DataInputStream(new AutoCloseInputStream(this.b));
            try {
                byte[] bArr = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr, 0, bArr.length);
                vq.a(dataInputStream);
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.unmarshall(bArr, 0, bArr.length);
                    obtain.setDataPosition(0);
                    this.c = (SafeParcelable) creator.createFromParcel(obtain);
                    this.d = false;
                } finally {
                    obtain.recycle();
                }
            } catch (Throwable e) {
                throw new IllegalStateException("Could not read from parcel file descriptor", e);
            } catch (Throwable th) {
                vq.a(dataInputStream);
            }
        }
        return (SafeParcelable) this.c;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (this.b == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.c.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                this.b = a(marshall);
            } finally {
                obtain.recycle();
            }
        }
        aa.a(this, parcel, i);
    }
}
