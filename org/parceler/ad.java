package org.parceler;

import android.os.IBinder;
import android.os.Parcelable;
import org.parceler.NonParcelRepository.IBinderParcelable;

/* compiled from: Twttr */
class ad implements bw<IBinder> {
    private ad() {
    }

    public Parcelable a(IBinder iBinder) {
        return new IBinderParcelable(iBinder);
    }
}
