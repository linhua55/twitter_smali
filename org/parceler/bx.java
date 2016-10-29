package org.parceler;

import android.os.Parcelable;
import java.lang.reflect.Constructor;

/* compiled from: Twttr */
final class bx<T> implements bw<T> {
    private final Constructor<? extends Parcelable> a;

    public bx(Class<T> cls, Class<? extends Parcelable> cls2) {
        try {
            this.a = cls2.getConstructor(new Class[]{cls});
        } catch (Exception e) {
            throw new ParcelerRuntimeException("Unable to create ParcelFactory Type", e);
        }
    }

    public Parcelable a(T t) {
        try {
            return (Parcelable) this.a.newInstance(new Object[]{t});
        } catch (Exception e) {
            throw new ParcelerRuntimeException("Unable to create ParcelFactory Type", e);
        } catch (Exception e2) {
            throw new ParcelerRuntimeException("Unable to create ParcelFactory Type", e2);
        } catch (Exception e22) {
            throw new ParcelerRuntimeException("Unable to create ParcelFactory Type", e22);
        }
    }
}
