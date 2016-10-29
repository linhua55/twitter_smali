package com.twitter.media.service.core;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import bbr;
import com.twitter.config.d;

/* compiled from: Twttr */
public abstract class MediaServiceTask implements Parcelable {
    private boolean a;
    private boolean b;

    protected abstract boolean b(Context context);

    protected MediaServiceTask() {
    }

    public void a(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        if (parcel.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        this.a = z;
        if (parcel.readInt() == 0) {
            z2 = false;
        }
        this.b = z2;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3 = 1;
        if (this.a) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeInt(i2);
        if (!this.b) {
            i3 = 0;
        }
        parcel.writeInt(i3);
    }

    public int describeContents() {
        return 0;
    }

    public boolean a() {
        return this.b;
    }

    public boolean b() {
        return this.a;
    }

    public final void a(Context context) {
        this.a = false;
        try {
            this.a = b(context);
            this.b = true;
        } catch (OutOfMemoryError e) {
            bbr.a(e);
        } catch (Exception e2) {
        }
    }

    protected boolean c(Context context) {
        return false;
    }

    private void a(Bundle bundle) {
        if (bundle != null) {
            try {
                bundle.setClassLoader(getClass().getClassLoader());
                Parcelable parcelable = bundle.getParcelable("parcel");
                Parcel obtain = Parcel.obtain();
                parcelable.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                a(obtain);
                obtain.recycle();
            } catch (Exception e) {
                this.a = false;
                this.b = false;
            }
        }
    }

    private void e(Context context) {
        this.a = false;
        try {
            this.a = c(context);
            this.b = true;
        } catch (OutOfMemoryError e) {
            bbr.a(e);
        } catch (Exception e2) {
        }
    }

    public boolean d(Context context) {
        return a(context, 0);
    }

    public boolean a(Context context, int i) {
        if (d.a("media_service_process_enabled")) {
            Bundle bundle = new Bundle();
            bundle.putParcelable("parcel", this);
            MediaServiceClient a = MediaServiceClient.a(context);
            a(i > 0 ? a.a(1, bundle, i) : a.a(1, bundle));
            if (!a()) {
                e(context);
            }
        } else {
            a(context);
        }
        return b();
    }
}
