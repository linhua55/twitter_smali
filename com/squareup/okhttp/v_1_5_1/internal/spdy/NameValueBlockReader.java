package com.squareup.okhttp.v_1_5_1.internal.spdy;

import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import com.squareup.okhttp.v_1_5_1.internal.okio.Deadline;
import com.squareup.okhttp.v_1_5_1.internal.okio.InflaterSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import com.squareup.okhttp.v_1_5_1.internal.okio.Source;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* compiled from: Twttr */
class NameValueBlockReader {
    private int compressedLimit;
    private final InflaterSource inflaterSource;
    private final BufferedSource source;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.spdy.NameValueBlockReader.1 */
    class AnonymousClass1 implements Source {
        final /* synthetic */ BufferedSource val$source;

        AnonymousClass1(BufferedSource bufferedSource) {
            this.val$source = bufferedSource;
        }

        public long read(OkBuffer okBuffer, long j) throws IOException {
            if (NameValueBlockReader.this.compressedLimit == 0) {
                return -1;
            }
            long read = this.val$source.read(okBuffer, Math.min(j, (long) NameValueBlockReader.this.compressedLimit));
            if (read == -1) {
                return -1;
            }
            NameValueBlockReader.access$022(NameValueBlockReader.this, read);
            return read;
        }

        public void close() throws IOException {
            this.val$source.close();
        }

        public Source deadline(Deadline deadline) {
            this.val$source.deadline(deadline);
            return this;
        }
    }

    static /* synthetic */ int access$022(NameValueBlockReader nameValueBlockReader, long j) {
        int i = (int) (((long) nameValueBlockReader.compressedLimit) - j);
        nameValueBlockReader.compressedLimit = i;
        return i;
    }

    public NameValueBlockReader(BufferedSource bufferedSource) {
        this.inflaterSource = new InflaterSource(new AnonymousClass1(bufferedSource), new Inflater() {
            public int inflate(byte[] bArr, int i, int i2) throws DataFormatException {
                int inflate = super.inflate(bArr, i, i2);
                if (inflate != 0 || !needsDictionary()) {
                    return inflate;
                }
                setDictionary(Spdy3.DICTIONARY);
                return super.inflate(bArr, i, i2);
            }
        });
        this.source = Okio.buffer(this.inflaterSource);
    }

    public List<Header> readNameValueBlock(int i) throws IOException {
        this.compressedLimit += i;
        int readInt = this.source.readInt();
        if (readInt < 0) {
            throw new IOException("numberOfPairs < 0: " + readInt);
        } else if (readInt > 1024) {
            throw new IOException("numberOfPairs > 1024: " + readInt);
        } else {
            List<Header> arrayList = new ArrayList(readInt);
            for (int i2 = 0; i2 < readInt; i2++) {
                ByteString toAsciiLowercase = readByteString().toAsciiLowercase();
                ByteString readByteString = readByteString();
                if (toAsciiLowercase.size() == 0) {
                    throw new IOException("name.size == 0");
                }
                arrayList.add(new Header(toAsciiLowercase, readByteString));
            }
            doneReading();
            return arrayList;
        }
    }

    private ByteString readByteString() throws IOException {
        return this.source.readByteString((long) this.source.readInt());
    }

    private void doneReading() throws IOException {
        if (this.compressedLimit > 0) {
            this.inflaterSource.refill();
            if (this.compressedLimit != 0) {
                throw new IOException("compressedLimit > 0: " + this.compressedLimit);
            }
        }
    }

    public void close() throws IOException {
        this.source.close();
    }
}
