package com.squareup.okhttp.v_1_5_1.internal.okio;

/* compiled from: Twttr */
final class SegmentPool {
    static final SegmentPool INSTANCE;
    static final long MAX_SIZE = 65536;
    long byteCount;
    private Segment next;

    static {
        INSTANCE = new SegmentPool();
    }

    private SegmentPool() {
    }

    Segment take() {
        synchronized (this) {
            if (this.next != null) {
                Segment segment = this.next;
                this.next = segment.next;
                segment.next = null;
                this.byteCount -= 2048;
                return segment;
            }
            return new Segment();
        }
    }

    void recycle(Segment segment) {
        if (segment.next == null && segment.prev == null) {
            synchronized (this) {
                if (this.byteCount + 2048 > MAX_SIZE) {
                    return;
                }
                this.byteCount += 2048;
                segment.next = this.next;
                segment.limit = 0;
                segment.pos = 0;
                this.next = segment;
                return;
            }
        }
        throw new IllegalArgumentException();
    }
}
