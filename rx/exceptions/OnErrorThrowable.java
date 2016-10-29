package rx.exceptions;

import defpackage.dax;

/* compiled from: Twttr */
public final class OnErrorThrowable extends RuntimeException {
    private static final long serialVersionUID = -569558213262703934L;
    private final boolean hasValue;
    private final Object value;

    /* compiled from: Twttr */
    public class OnNextValue extends RuntimeException {
        private static final long serialVersionUID = -3454462756050397899L;
        private final Object value;

        public OnNextValue(Object obj) {
            super("OnError while emitting onNext value: " + a(obj));
            this.value = obj;
        }

        public Object a() {
            return this.value;
        }

        static String a(Object obj) {
            if (obj == null) {
                return "null";
            }
            if (f.a.contains(obj.getClass())) {
                return obj.toString();
            }
            if (obj instanceof String) {
                return (String) obj;
            }
            if (obj instanceof Enum) {
                return ((Enum) obj).name();
            }
            String a = dax.a().b().a(obj);
            if (a != null) {
                return a;
            }
            return obj.getClass().getName() + ".class";
        }
    }

    public static Throwable a(Throwable th, Object obj) {
        if (th == null) {
            th = new NullPointerException();
        }
        Throwable b = e.b(th);
        if (!(b != null && (b instanceof OnNextValue) && ((OnNextValue) b).a() == obj)) {
            e.a(th, new OnNextValue(obj));
        }
        return th;
    }
}
