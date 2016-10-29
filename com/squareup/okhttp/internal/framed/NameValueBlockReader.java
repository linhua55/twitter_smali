package com.squareup.okhttp.internal.framed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import okio.ByteString;
import okio.ab;
import okio.f;
import okio.j;
import okio.m;
import okio.p;
import okio.q;

/* compiled from: Twttr */
class NameValueBlockReader {
    private int compressedLimit;
    private final p inflaterSource;
    private final j source;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.framed.NameValueBlockReader.1 */
    class AnonymousClass1 extends m {
        AnonymousClass1(ab abVar) {
            super(abVar);
        }

        public long read(f fVar, long j) throws IOException {
            if (NameValueBlockReader.this.compressedLimit == 0) {
                return -1;
            }
            long read = super.read(fVar, Math.min(j, (long) NameValueBlockReader.this.compressedLimit));
            if (read == -1) {
                return -1;
            }
            NameValueBlockReader.access$022(NameValueBlockReader.this, read);
            return read;
        }
    }

    static /* synthetic */ int access$022(NameValueBlockReader nameValueBlockReader, long j) {
        int i = (int) (((long) nameValueBlockReader.compressedLimit) - j);
        nameValueBlockReader.compressedLimit = i;
        return i;
    }

    public NameValueBlockReader(j jVar) {
        this.inflaterSource = new p(new AnonymousClass1(jVar), new Inflater() {
            public int inflate(byte[] bArr, int i, int i2) throws DataFormatException {
                int inflate = super.inflate(bArr, i, i2);
                if (inflate != 0 || !needsDictionary()) {
                    return inflate;
                }
                setDictionary(Spdy3.DICTIONARY);
                return super.inflate(bArr, i, i2);
            }
        });
        this.source = q.a(this.inflaterSource);
    }

    public List<Header> readNameValueBlock(int i) throws IOException {
        this.compressedLimit += i;
        int k = this.source.k();
        if (k < 0) {
            throw new IOException("numberOfPairs < 0: " + k);
        } else if (k > 1024) {
            throw new IOException("numberOfPairs > 1024: " + k);
        } else {
            List<Header> arrayList = new ArrayList(k);
            for (int i2 = 0; i2 < k; i2++) {
                ByteString e = readByteString().e();
                ByteString readByteString = readByteString();
                if (e.f() == 0) {
                    throw new IOException("name.size == 0");
                }
                arrayList.add(new Header(e, readByteString));
            }
            doneReading();
            return arrayList;
        }
    }

    private ByteString readByteString() throws IOException {
        return this.source.c((long) this.source.k());
    }

    private void doneReading() throws IOException {
        if (this.compressedLimit > 0) {
            this.inflaterSource.a();
            if (this.compressedLimit != 0) {
                throw new IOException("compressedLimit > 0: " + this.compressedLimit);
            }
        }
    }

    public void close() throws IOException {
        this.source.close();
    }
}
