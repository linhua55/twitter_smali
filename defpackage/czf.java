package defpackage;

import rx.internal.util.atomic.LinkedQueueNode;

/* compiled from: Twttr */
/* renamed from: czf */
abstract class czf<E> extends czd<E> {
    protected static final long b;
    protected LinkedQueueNode<E> producerNode;

    czf() {
    }

    static {
        b = daf.a(czf.class, "producerNode");
    }

    protected final void b(LinkedQueueNode<E> linkedQueueNode) {
        this.producerNode = linkedQueueNode;
    }

    protected final LinkedQueueNode<E> b() {
        return (LinkedQueueNode) daf.a.getObjectVolatile(this, b);
    }
}
