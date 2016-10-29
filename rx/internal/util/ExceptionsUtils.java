package rx.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicReference;
import rx.exceptions.CompositeException;

/* compiled from: Twttr */
public enum ExceptionsUtils {
    ;
    
    private static final Throwable a;

    static {
        a = new Throwable("Terminated");
    }

    public static boolean a(AtomicReference<Throwable> atomicReference, Throwable th) {
        Throwable th2;
        Object obj;
        do {
            th2 = (Throwable) atomicReference.get();
            if (th2 == a) {
                return false;
            }
            if (th2 == null) {
                obj = th;
            } else if (th2 instanceof CompositeException) {
                Collection arrayList = new ArrayList(((CompositeException) th2).a());
                arrayList.add(th);
                obj = new CompositeException(arrayList);
            } else {
                obj = new CompositeException(new Throwable[]{th2, th});
            }
        } while (!atomicReference.compareAndSet(th2, obj));
        return true;
    }

    public static Throwable a(AtomicReference<Throwable> atomicReference) {
        Throwable th = (Throwable) atomicReference.get();
        if (th != a) {
            return (Throwable) atomicReference.getAndSet(a);
        }
        return th;
    }

    public static boolean a(Throwable th) {
        return th == a;
    }
}
