package com.google.android.gms.iid;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public class MessengerCompat implements Parcelable {
    public static final Creator<MessengerCompat> CREATOR;
    Messenger a;
    g b;

    static {
        CREATOR = new d();
    }

    public MessengerCompat(Handler handler) {
        if (VERSION.SDK_INT >= 21) {
            this.a = new Messenger(handler);
        } else {
            this.b = new e(this, handler);
        }
    }

    public MessengerCompat(IBinder iBinder) {
        if (VERSION.SDK_INT >= 21) {
            this.a = new Messenger(iBinder);
        } else {
            this.b = h.a(iBinder);
        }
    }

    public static int a(Message message) {
        return VERSION.SDK_INT >= 21 ? c(message) : message.arg2;
    }

    @TargetApi(21)
    private static int c(Message message) {
        return message.sendingUid;
    }

    public IBinder a() {
        return this.a != null ? this.a.getBinder() : this.b.asBinder();
    }

    public void b(Message message) throws RemoteException {
        if (this.a != null) {
            this.a.send(message);
        } else {
            this.b.a(message);
        }
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                z = a().equals(((MessengerCompat) obj).a());
            } catch (ClassCastException e) {
            }
        }
        return z;
    }

    public int hashCode() {
        return a().hashCode();
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (this.a != null) {
            parcel.writeStrongBinder(this.a.getBinder());
        } else {
            parcel.writeStrongBinder(this.b.asBinder());
        }
    }
}
