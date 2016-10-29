package com.squareup.okhttp.v_1_5_1.internal.okio;

/* compiled from: Twttr */
final class Segment {
    static final int SIZE = 2048;
    final byte[] data;
    int limit;
    Segment next;
    int pos;
    Segment prev;

    Segment() {
        this.data = new byte[SIZE];
    }

    public Segment pop() {
        Segment segment = this.next != this ? this.next : null;
        this.prev.next = this.next;
        this.next.prev = this.prev;
        this.next = null;
        this.prev = null;
        return segment;
    }

    public Segment push(Segment segment) {
        segment.prev = this;
        segment.next = this.next;
        this.next.prev = segment;
        this.next = segment;
        return segment;
    }

    public Segment split(int i) {
        int i2 = (this.limit - this.pos) - i;
        if (i <= 0 || i2 <= 0) {
            throw new IllegalArgumentException();
        } else if (i < i2) {
            Segment take = SegmentPool.INSTANCE.take();
            System.arraycopy(this.data, this.pos, take.data, take.pos, i);
            this.pos += i;
            take.limit += i;
            this.prev.push(take);
            return take;
        } else {
            Segment take2 = SegmentPool.INSTANCE.take();
            System.arraycopy(this.data, this.pos + i, take2.data, take2.pos, i2);
            this.limit -= i2;
            take2.limit = i2 + take2.limit;
            push(take2);
            return this;
        }
    }

    public void compact() {
        if (this.prev == this) {
            throw new IllegalStateException();
        } else if ((this.prev.limit - this.prev.pos) + (this.limit - this.pos) <= SIZE) {
            writeTo(this.prev, this.limit - this.pos);
            pop();
            SegmentPool.INSTANCE.recycle(this);
        }
    }

    public void writeTo(Segment segment, int i) {
        if ((segment.limit - segment.pos) + i > SIZE) {
            throw new IllegalArgumentException();
        }
        if (segment.limit + i > SIZE) {
            System.arraycopy(segment.data, segment.pos, segment.data, 0, segment.limit - segment.pos);
            segment.limit -= segment.pos;
            segment.pos = 0;
        }
        System.arraycopy(this.data, this.pos, segment.data, segment.limit, i);
        segment.limit += i;
        this.pos += i;
    }
}
