package rx.internal.operators;

import java.io.Serializable;
import rx.r;

/* compiled from: Twttr */
public final class NotificationLite<T> {
    private static final NotificationLite a;
    private static final Object b;
    private static final Object c;

    /* compiled from: Twttr */
    class OnErrorSentinel implements Serializable {
        private static final long serialVersionUID = 3;
        final Throwable e;

        public OnErrorSentinel(Throwable th) {
            this.e = th;
        }

        public String toString() {
            return "Notification=>Error:" + this.e;
        }
    }

    private NotificationLite() {
    }

    static {
        a = new NotificationLite();
        b = new Serializable() {
            private static final long serialVersionUID = 1;

            public String toString() {
                return "Notification=>Completed";
            }
        };
        c = new Serializable() {
            private static final long serialVersionUID = 2;

            public String toString() {
                return "Notification=>NULL";
            }
        };
    }

    public static <T> NotificationLite<T> a() {
        return a;
    }

    public Object a(T t) {
        if (t == null) {
            return c;
        }
        return t;
    }

    public Object b() {
        return b;
    }

    public Object a(Throwable th) {
        return new OnErrorSentinel(th);
    }

    public boolean a(r<? super T> rVar, Object obj) {
        if (obj == b) {
            rVar.bs_();
            return true;
        } else if (obj == c) {
            rVar.b_(null);
            return false;
        } else if (obj == null) {
            throw new IllegalArgumentException("The lite notification can not be null");
        } else if (obj.getClass() == OnErrorSentinel.class) {
            rVar.a(((OnErrorSentinel) obj).e);
            return true;
        } else {
            rVar.b_(obj);
            return false;
        }
    }

    public boolean b(Object obj) {
        return obj == b;
    }

    public boolean c(Object obj) {
        return obj instanceof OnErrorSentinel;
    }

    public T d(Object obj) {
        return obj == c ? null : obj;
    }

    public Throwable e(Object obj) {
        return ((OnErrorSentinel) obj).e;
    }
}
