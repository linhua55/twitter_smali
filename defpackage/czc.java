package defpackage;

import rx.internal.util.atomic.LinkedQueueNode;

/* compiled from: Twttr */
/* renamed from: czc */
abstract class czc<E> extends cze<E> {
    protected static final long a;
    protected LinkedQueueNode<E> consumerNode;

    czc() {
    }

    static {
        a = daf.a(czc.class, "consumerNode");
    }

    protected final void a(LinkedQueueNode<E> linkedQueueNode) {
        this.consumerNode = linkedQueueNode;
    }

    protected final LinkedQueueNode<E> a() {
        return (LinkedQueueNode) daf.a.getObjectVolatile(this, a);
    }
}
