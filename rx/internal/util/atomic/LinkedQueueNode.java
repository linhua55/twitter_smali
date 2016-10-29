package rx.internal.util.atomic;

import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
public final class LinkedQueueNode<E> extends AtomicReference<LinkedQueueNode<E>> {
    private static final long serialVersionUID = 2404266111789071508L;
    private E value;

    public LinkedQueueNode(E e) {
        a((Object) e);
    }

    public E a() {
        E b = b();
        a(null);
        return b;
    }

    public E b() {
        return this.value;
    }

    public void a(E e) {
        this.value = e;
    }

    public void a(LinkedQueueNode<E> linkedQueueNode) {
        lazySet(linkedQueueNode);
    }

    public LinkedQueueNode<E> c() {
        return (LinkedQueueNode) get();
    }
}
