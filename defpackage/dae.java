package defpackage;

import rx.internal.util.atomic.LinkedQueueNode;

/* compiled from: Twttr */
/* renamed from: dae */
public final class dae<E> extends czb<E> {
    public dae() {
        b(new LinkedQueueNode());
        a(this.producerNode);
        this.consumerNode.a(null);
    }

    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException("null elements not allowed");
        }
        LinkedQueueNode linkedQueueNode = new LinkedQueueNode(e);
        this.producerNode.a(linkedQueueNode);
        this.producerNode = linkedQueueNode;
        return true;
    }

    public E poll() {
        LinkedQueueNode c = this.consumerNode.c();
        if (c == null) {
            return null;
        }
        E a = c.a();
        this.consumerNode = c;
        return a;
    }

    public E peek() {
        LinkedQueueNode c = this.consumerNode.c();
        if (c != null) {
            return c.b();
        }
        return null;
    }
}
