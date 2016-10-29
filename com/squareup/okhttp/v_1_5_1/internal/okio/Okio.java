package com.squareup.okhttp.v_1_5_1.internal.okio;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public final class Okio {

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.okio.Okio.1 */
    final class AnonymousClass1 implements Sink {
        private Deadline deadline;
        final /* synthetic */ OutputStream val$out;

        AnonymousClass1(OutputStream outputStream) {
            this.val$out = outputStream;
            this.deadline = Deadline.NONE;
        }

        public void write(OkBuffer okBuffer, long j) throws IOException {
            Util.checkOffsetAndCount(okBuffer.size, 0, j);
            while (j > 0) {
                this.deadline.throwIfReached();
                Segment segment = okBuffer.head;
                int min = (int) Math.min(j, (long) (segment.limit - segment.pos));
                this.val$out.write(segment.data, segment.pos, min);
                segment.pos += min;
                j -= (long) min;
                okBuffer.size -= (long) min;
                if (segment.pos == segment.limit) {
                    okBuffer.head = segment.pop();
                    SegmentPool.INSTANCE.recycle(segment);
                }
            }
        }

        public void flush() throws IOException {
            this.val$out.flush();
        }

        public void close() throws IOException {
            this.val$out.close();
        }

        public Sink deadline(Deadline deadline) {
            if (deadline == null) {
                throw new IllegalArgumentException("deadline == null");
            }
            this.deadline = deadline;
            return this;
        }

        public String toString() {
            return "sink(" + this.val$out + ")";
        }
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.okio.Okio.2 */
    final class AnonymousClass2 implements Source {
        private Deadline deadline;
        final /* synthetic */ InputStream val$in;

        AnonymousClass2(InputStream inputStream) {
            this.val$in = inputStream;
            this.deadline = Deadline.NONE;
        }

        public long read(OkBuffer okBuffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            this.deadline.throwIfReached();
            Segment writableSegment = okBuffer.writableSegment(1);
            int read = this.val$in.read(writableSegment.data, writableSegment.limit, (int) Math.min(j, (long) (2048 - writableSegment.limit)));
            if (read == -1) {
                return -1;
            }
            writableSegment.limit += read;
            okBuffer.size += (long) read;
            return (long) read;
        }

        public void close() throws IOException {
            this.val$in.close();
        }

        public Source deadline(Deadline deadline) {
            if (deadline == null) {
                throw new IllegalArgumentException("deadline == null");
            }
            this.deadline = deadline;
            return this;
        }

        public String toString() {
            return "source(" + this.val$in + ")";
        }
    }

    private Okio() {
    }

    public static BufferedSource buffer(Source source) {
        return new RealBufferedSource(source);
    }

    public static BufferedSink buffer(Sink sink) {
        return new RealBufferedSink(sink);
    }

    public static void copy(OkBuffer okBuffer, long j, long j2, OutputStream outputStream) throws IOException {
        Util.checkOffsetAndCount(okBuffer.size, j, j2);
        Segment segment = okBuffer.head;
        while (j >= ((long) (segment.limit - segment.pos))) {
            j -= (long) (segment.limit - segment.pos);
            segment = segment.next;
        }
        while (j2 > 0) {
            int i = (int) (((long) segment.pos) + j);
            int min = (int) Math.min((long) (segment.limit - i), j2);
            outputStream.write(segment.data, i, min);
            j2 -= (long) min;
            j = 0;
        }
    }

    public static Sink sink(OutputStream outputStream) {
        return new AnonymousClass1(outputStream);
    }

    public static Source source(InputStream inputStream) {
        return new AnonymousClass2(inputStream);
    }
}
