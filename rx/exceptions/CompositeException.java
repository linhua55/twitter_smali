package rx.exceptions;

import android.support.v7.recyclerview.BuildConfig;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* compiled from: Twttr */
public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    @Deprecated
    public CompositeException(String str, Collection<? extends Throwable> collection) {
        this.cause = null;
        Collection linkedHashSet = new LinkedHashSet();
        List arrayList = new ArrayList();
        if (collection != null) {
            for (Throwable th : collection) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).a());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        this.exceptions = Collections.unmodifiableList(arrayList);
        this.message = this.exceptions.size() + " exceptions occurred. ";
    }

    public CompositeException(Collection<? extends Throwable> collection) {
        this(null, collection);
    }

    public CompositeException(Throwable... thArr) {
        this.cause = null;
        Collection linkedHashSet = new LinkedHashSet();
        List arrayList = new ArrayList();
        if (thArr != null) {
            for (Object obj : thArr) {
                if (obj instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) obj).a());
                } else if (obj != null) {
                    linkedHashSet.add(obj);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        this.exceptions = Collections.unmodifiableList(arrayList);
        this.message = this.exceptions.size() + " exceptions occurred. ";
    }

    public List<Throwable> a() {
        return this.exceptions;
    }

    public String getMessage() {
        return this.message;
    }

    public synchronized Throwable getCause() {
        if (this.cause == null) {
            CompositeExceptionCausalChain compositeExceptionCausalChain = new CompositeExceptionCausalChain();
            Set hashSet = new HashSet();
            Throwable th = compositeExceptionCausalChain;
            for (Throwable th2 : this.exceptions) {
                if (!hashSet.contains(th2)) {
                    hashSet.add(th2);
                    Throwable th3 = th2;
                    for (Throwable th22 : a(th22)) {
                        if (hashSet.contains(th22)) {
                            th3 = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            hashSet.add(th22);
                        }
                    }
                    try {
                        th.initCause(th3);
                    } catch (Throwable th4) {
                    }
                    th = b(th);
                }
            }
            this.cause = compositeExceptionCausalChain;
        }
        return this.cause;
    }

    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public void printStackTrace(PrintStream printStream) {
        a(new c(printStream));
    }

    public void printStackTrace(PrintWriter printWriter) {
        a(new d(printWriter));
    }

    private void a(b bVar) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this).append("\n");
        for (Object append : getStackTrace()) {
            stringBuilder.append("\tat ").append(append).append("\n");
        }
        int i = 1;
        for (Throwable th : this.exceptions) {
            stringBuilder.append("  ComposedException ").append(i).append(" :").append("\n");
            a(stringBuilder, th, "\t");
            i++;
        }
        synchronized (bVar.a()) {
            bVar.a(stringBuilder.toString());
        }
    }

    private void a(StringBuilder stringBuilder, Throwable th, String str) {
        stringBuilder.append(str).append(th).append("\n");
        for (Object append : th.getStackTrace()) {
            stringBuilder.append("\t\tat ").append(append).append("\n");
        }
        if (th.getCause() != null) {
            stringBuilder.append("\tCaused by: ");
            a(stringBuilder, th.getCause(), BuildConfig.VERSION_NAME);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.util.List<java.lang.Throwable> a(java.lang.Throwable r4) {
        /*
        r3 = this;
        r1 = new java.util.ArrayList;
        r1.<init>();
        r0 = r4.getCause();
        if (r0 == 0) goto L_0x000d;
    L_0x000b:
        if (r0 != r4) goto L_0x0013;
    L_0x000d:
        r0 = r1;
    L_0x000e:
        return r0;
    L_0x000f:
        r0 = r0.getCause();
    L_0x0013:
        r1.add(r0);
        r2 = r0.getCause();
        if (r2 == 0) goto L_0x001e;
    L_0x001c:
        if (r2 != r0) goto L_0x000f;
    L_0x001e:
        r0 = r1;
        goto L_0x000e;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.exceptions.CompositeException.a(java.lang.Throwable):java.util.List<java.lang.Throwable>");
    }

    private Throwable b(Throwable th) {
        Throwable cause = th.getCause();
        if (cause == null || cause == th) {
            return th;
        }
        while (true) {
            Throwable cause2 = cause.getCause();
            if (cause2 == null) {
                return cause;
            }
            if (cause2 == cause) {
                return cause;
            }
            cause = cause.getCause();
        }
    }
}
