package rx.internal.util.atomic;

/* compiled from: Twttr */
public final class e<E> extends b<E> {
    public e() {
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode();
        a(linkedQueueNode);
        b(linkedQueueNode);
        linkedQueueNode.a(null);
    }

    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException("null elements not allowed");
        }
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode(e);
        b().a(linkedQueueNode);
        a(linkedQueueNode);
        return true;
    }

    public E poll() {
        LinkedQueueNode c = d().c();
        if (c == null) {
            return null;
        }
        E a = c.a();
        b(c);
        return a;
    }

    public E peek() {
        LinkedQueueNode c = d().c();
        if (c != null) {
            return c.b();
        }
        return null;
    }
}
