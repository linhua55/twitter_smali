package rx.exceptions;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import rx.r;

/* compiled from: Twttr */
public final class e {
    public static void a(Throwable th) {
        if (th instanceof OnErrorNotImplementedException) {
            throw ((OnErrorNotImplementedException) th);
        } else if (th instanceof OnErrorFailedException) {
            throw ((OnErrorFailedException) th);
        } else if (th instanceof OnCompletedFailedException) {
            throw ((OnCompletedFailedException) th);
        } else if (th instanceof StackOverflowError) {
            throw ((StackOverflowError) th);
        } else if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    public static void a(Throwable th, Throwable th2) {
        Set hashSet = new HashSet();
        int i = 0;
        while (th.getCause() != null) {
            int i2 = i + 1;
            if (i < 25) {
                th = th.getCause();
                if (!hashSet.contains(th.getCause())) {
                    hashSet.add(th.getCause());
                    i = i2;
                }
            } else {
                return;
            }
        }
        try {
            break;
            th.initCause(th2);
        } catch (Throwable th3) {
        }
    }

    public static Throwable b(Throwable th) {
        int i = 0;
        while (th.getCause() != null) {
            int i2 = i + 1;
            if (i >= 25) {
                return new RuntimeException("Stack too deep to get final cause");
            }
            th = th.getCause();
            i = i2;
        }
        return th;
    }

    public static void a(List<? extends Throwable> list) {
        if (list != null && !list.isEmpty()) {
            if (list.size() == 1) {
                Throwable th = (Throwable) list.get(0);
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                } else if (th instanceof Error) {
                    throw ((Error) th);
                } else {
                    throw new RuntimeException(th);
                }
            }
            throw new CompositeException((Collection) list);
        }
    }

    public static void a(Throwable th, r<?> rVar, Object obj) {
        a(th);
        rVar.a(OnErrorThrowable.a(th, obj));
    }

    public static void a(Throwable th, r<?> rVar) {
        a(th);
        rVar.a(th);
    }
}
