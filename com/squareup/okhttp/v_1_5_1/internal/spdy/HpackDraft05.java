package com.squareup.okhttp.v_1_5_1.internal.spdy;

import com.google.android.exoplayer.extractor.ts.PsExtractor;
import com.squareup.okhttp.v_1_5_1.internal.BitArray;
import com.squareup.okhttp.v_1_5_1.internal.BitArray.FixedCapacity;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import com.squareup.okhttp.v_1_5_1.internal.okio.Source;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
final class HpackDraft05 {
    private static final Map<ByteString, Integer> NAME_TO_FIRST_INDEX;
    private static final int PREFIX_6_BITS = 63;
    private static final int PREFIX_7_BITS = 127;
    private static final int PREFIX_8_BITS = 255;
    private static final Header[] STATIC_HEADER_TABLE;

    /* compiled from: Twttr */
    final class Reader {
        private final List<Header> emittedHeaders;
        int headerCount;
        Header[] headerTable;
        int headerTableByteCount;
        private final Codec huffmanCodec;
        private int maxHeaderTableByteCount;
        int nextHeaderIndex;
        BitArray referencedHeaders;
        long referencedStaticHeaders;
        private final BufferedSource source;

        Reader(boolean z, int i, Source source) {
            this.emittedHeaders = new ArrayList();
            this.headerTable = new Header[8];
            this.nextHeaderIndex = this.headerTable.length - 1;
            this.headerCount = 0;
            this.referencedHeaders = new FixedCapacity();
            this.referencedStaticHeaders = 0;
            this.headerTableByteCount = 0;
            this.huffmanCodec = z ? Codec.RESPONSE : Codec.REQUEST;
            this.maxHeaderTableByteCount = i;
            this.source = Okio.buffer(source);
        }

        int maxHeaderTableByteCount() {
            return this.maxHeaderTableByteCount;
        }

        void maxHeaderTableByteCount(int i) {
            this.maxHeaderTableByteCount = i;
            if (this.maxHeaderTableByteCount >= this.headerTableByteCount) {
                return;
            }
            if (this.maxHeaderTableByteCount == 0) {
                clearHeaderTable();
            } else {
                evictToRecoverBytes(this.headerTableByteCount - this.maxHeaderTableByteCount);
            }
        }

        private void clearHeaderTable() {
            clearReferenceSet();
            Arrays.fill(this.headerTable, null);
            this.nextHeaderIndex = this.headerTable.length - 1;
            this.headerCount = 0;
            this.headerTableByteCount = 0;
        }

        private int evictToRecoverBytes(int i) {
            int i2 = 0;
            if (i > 0) {
                for (int length = this.headerTable.length - 1; length >= this.nextHeaderIndex && i > 0; length--) {
                    i -= this.headerTable[length].hpackSize;
                    this.headerTableByteCount -= this.headerTable[length].hpackSize;
                    this.headerCount--;
                    i2++;
                }
                this.referencedHeaders.shiftLeft(i2);
                System.arraycopy(this.headerTable, this.nextHeaderIndex + 1, this.headerTable, (this.nextHeaderIndex + 1) + i2, this.headerCount);
                this.nextHeaderIndex += i2;
            }
            return i2;
        }

        void readHeaders() throws IOException {
            while (!this.source.exhausted()) {
                int readByte = this.source.readByte() & HpackDraft05.PREFIX_8_BITS;
                if (readByte == 128) {
                    clearReferenceSet();
                } else if ((readByte & 128) == 128) {
                    readIndexedHeader(readInt(readByte, HpackDraft05.PREFIX_7_BITS) - 1);
                } else if (readByte == 64) {
                    readLiteralHeaderWithoutIndexingNewName();
                } else if ((readByte & 64) == 64) {
                    readLiteralHeaderWithoutIndexingIndexedName(readInt(readByte, HpackDraft05.PREFIX_6_BITS) - 1);
                } else if (readByte == 0) {
                    readLiteralHeaderWithIncrementalIndexingNewName();
                } else if ((readByte & PsExtractor.AUDIO_STREAM) == 0) {
                    readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(readByte, HpackDraft05.PREFIX_6_BITS) - 1);
                } else {
                    throw new AssertionError("unhandled byte: " + Integer.toBinaryString(readByte));
                }
            }
        }

        private void clearReferenceSet() {
            this.referencedStaticHeaders = 0;
            this.referencedHeaders.clear();
        }

        void emitReferenceSet() {
            int i;
            for (i = 0; i < HpackDraft05.STATIC_HEADER_TABLE.length; i++) {
                if (((this.referencedStaticHeaders >> i) & 1) == 1) {
                    this.emittedHeaders.add(HpackDraft05.STATIC_HEADER_TABLE[i]);
                }
            }
            for (i = this.headerTable.length - 1; i != this.nextHeaderIndex; i--) {
                if (this.referencedHeaders.get(i)) {
                    this.emittedHeaders.add(this.headerTable[i]);
                }
            }
        }

        List<Header> getAndReset() {
            List arrayList = new ArrayList(this.emittedHeaders);
            this.emittedHeaders.clear();
            return arrayList;
        }

        private void readIndexedHeader(int i) {
            if (!isStaticHeader(i)) {
                this.referencedHeaders.toggle(headerTableIndex(i));
            } else if (this.maxHeaderTableByteCount == 0) {
                this.referencedStaticHeaders |= 1 << (i - this.headerCount);
            } else {
                insertIntoHeaderTable(-1, HpackDraft05.STATIC_HEADER_TABLE[i - this.headerCount]);
            }
        }

        private int headerTableIndex(int i) {
            return (this.nextHeaderIndex + 1) + i;
        }

        private void readLiteralHeaderWithoutIndexingIndexedName(int i) throws IOException {
            this.emittedHeaders.add(new Header(getName(i), readByteString(false)));
        }

        private void readLiteralHeaderWithoutIndexingNewName() throws IOException {
            this.emittedHeaders.add(new Header(readByteString(true), readByteString(false)));
        }

        private void readLiteralHeaderWithIncrementalIndexingIndexedName(int i) throws IOException {
            insertIntoHeaderTable(-1, new Header(getName(i), readByteString(false)));
        }

        private void readLiteralHeaderWithIncrementalIndexingNewName() throws IOException {
            insertIntoHeaderTable(-1, new Header(readByteString(true), readByteString(false)));
        }

        private ByteString getName(int i) {
            if (isStaticHeader(i)) {
                return HpackDraft05.STATIC_HEADER_TABLE[i - this.headerCount].name;
            }
            return this.headerTable[headerTableIndex(i)].name;
        }

        private boolean isStaticHeader(int i) {
            return i >= this.headerCount;
        }

        private void insertIntoHeaderTable(int i, Header header) {
            int i2;
            int i3 = header.hpackSize;
            if (i != -1) {
                i2 = i3 - this.headerTable[headerTableIndex(i)].hpackSize;
            } else {
                i2 = i3;
            }
            if (i2 > this.maxHeaderTableByteCount) {
                clearHeaderTable();
                this.emittedHeaders.add(header);
                return;
            }
            i3 = evictToRecoverBytes((this.headerTableByteCount + i2) - this.maxHeaderTableByteCount);
            if (i == -1) {
                if (this.headerCount + 1 > this.headerTable.length) {
                    Object obj = new Header[(this.headerTable.length * 2)];
                    System.arraycopy(this.headerTable, 0, obj, this.headerTable.length, this.headerTable.length);
                    if (obj.length == 64) {
                        this.referencedHeaders = ((FixedCapacity) this.referencedHeaders).toVariableCapacity();
                    }
                    this.referencedHeaders.shiftLeft(this.headerTable.length);
                    this.nextHeaderIndex = this.headerTable.length - 1;
                    this.headerTable = obj;
                }
                i3 = this.nextHeaderIndex;
                this.nextHeaderIndex = i3 - 1;
                this.referencedHeaders.set(i3);
                this.headerTable[i3] = header;
                this.headerCount++;
            } else {
                i3 = (i3 + headerTableIndex(i)) + i;
                this.referencedHeaders.set(i3);
                this.headerTable[i3] = header;
            }
            this.headerTableByteCount += i2;
        }

        private int readByte() throws IOException {
            return this.source.readByte() & HpackDraft05.PREFIX_8_BITS;
        }

        int readInt(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            i3 = 0;
            while (true) {
                int readByte = readByte();
                if ((readByte & 128) == 0) {
                    return (readByte << i3) + i2;
                }
                i2 += (readByte & HpackDraft05.PREFIX_7_BITS) << i3;
                i3 += 7;
            }
        }

        ByteString readByteString(boolean z) throws IOException {
            ByteString decode;
            int readByte = readByte();
            Object obj = (readByte & 128) == 128 ? 1 : null;
            ByteString readByteString = this.source.readByteString((long) readInt(readByte, HpackDraft05.PREFIX_7_BITS));
            if (obj != null) {
                decode = this.huffmanCodec.decode(readByteString);
            } else {
                decode = readByteString;
            }
            if (z) {
                return decode.toAsciiLowercase();
            }
            return decode;
        }
    }

    /* compiled from: Twttr */
    final class Writer {
        private final OkBuffer out;

        Writer(OkBuffer okBuffer) {
            this.out = okBuffer;
        }

        void writeHeaders(List<Header> list) throws IOException {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ByteString byteString = ((Header) list.get(i)).name;
                Integer num = (Integer) HpackDraft05.NAME_TO_FIRST_INDEX.get(byteString);
                if (num != null) {
                    writeInt(num.intValue() + 1, HpackDraft05.PREFIX_6_BITS, 64);
                    writeByteString(((Header) list.get(i)).value);
                } else {
                    this.out.writeByte(64);
                    writeByteString(byteString);
                    writeByteString(((Header) list.get(i)).value);
                }
            }
        }

        void writeInt(int i, int i2, int i3) throws IOException {
            if (i < i2) {
                this.out.writeByte(i3 | i);
                return;
            }
            this.out.writeByte(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.out.writeByte((i4 & HpackDraft05.PREFIX_7_BITS) | 128);
                i4 >>>= 7;
            }
            this.out.writeByte(i4);
        }

        void writeByteString(ByteString byteString) throws IOException {
            writeInt(byteString.size(), HpackDraft05.PREFIX_7_BITS, 0);
            this.out.write(byteString);
        }
    }

    static {
        STATIC_HEADER_TABLE = new Header[]{new Header(Header.TARGET_AUTHORITY, TtmlNode.ANONYMOUS_REGION_ID), new Header(Header.TARGET_METHOD, "GET"), new Header(Header.TARGET_METHOD, "POST"), new Header(Header.TARGET_PATH, "/"), new Header(Header.TARGET_PATH, "/index.html"), new Header(Header.TARGET_SCHEME, "http"), new Header(Header.TARGET_SCHEME, "https"), new Header(Header.RESPONSE_STATUS, "200"), new Header(Header.RESPONSE_STATUS, "500"), new Header(Header.RESPONSE_STATUS, "404"), new Header(Header.RESPONSE_STATUS, "403"), new Header(Header.RESPONSE_STATUS, "400"), new Header(Header.RESPONSE_STATUS, "401"), new Header("accept-charset", TtmlNode.ANONYMOUS_REGION_ID), new Header("accept-encoding", TtmlNode.ANONYMOUS_REGION_ID), new Header("accept-language", TtmlNode.ANONYMOUS_REGION_ID), new Header("accept-ranges", TtmlNode.ANONYMOUS_REGION_ID), new Header("accept", TtmlNode.ANONYMOUS_REGION_ID), new Header("access-control-allow-origin", TtmlNode.ANONYMOUS_REGION_ID), new Header("age", TtmlNode.ANONYMOUS_REGION_ID), new Header("allow", TtmlNode.ANONYMOUS_REGION_ID), new Header("authorization", TtmlNode.ANONYMOUS_REGION_ID), new Header("cache-control", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-disposition", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-encoding", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-language", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-length", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-location", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-range", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-type", TtmlNode.ANONYMOUS_REGION_ID), new Header("cookie", TtmlNode.ANONYMOUS_REGION_ID), new Header("date", TtmlNode.ANONYMOUS_REGION_ID), new Header("etag", TtmlNode.ANONYMOUS_REGION_ID), new Header("expect", TtmlNode.ANONYMOUS_REGION_ID), new Header("expires", TtmlNode.ANONYMOUS_REGION_ID), new Header("from", TtmlNode.ANONYMOUS_REGION_ID), new Header("host", TtmlNode.ANONYMOUS_REGION_ID), new Header("if-match", TtmlNode.ANONYMOUS_REGION_ID), new Header("if-modified-since", TtmlNode.ANONYMOUS_REGION_ID), new Header("if-none-match", TtmlNode.ANONYMOUS_REGION_ID), new Header("if-range", TtmlNode.ANONYMOUS_REGION_ID), new Header("if-unmodified-since", TtmlNode.ANONYMOUS_REGION_ID), new Header("last-modified", TtmlNode.ANONYMOUS_REGION_ID), new Header("link", TtmlNode.ANONYMOUS_REGION_ID), new Header("location", TtmlNode.ANONYMOUS_REGION_ID), new Header("max-forwards", TtmlNode.ANONYMOUS_REGION_ID), new Header("proxy-authenticate", TtmlNode.ANONYMOUS_REGION_ID), new Header("proxy-authorization", TtmlNode.ANONYMOUS_REGION_ID), new Header("range", TtmlNode.ANONYMOUS_REGION_ID), new Header("referer", TtmlNode.ANONYMOUS_REGION_ID), new Header("refresh", TtmlNode.ANONYMOUS_REGION_ID), new Header("retry-after", TtmlNode.ANONYMOUS_REGION_ID), new Header("server", TtmlNode.ANONYMOUS_REGION_ID), new Header("set-cookie", TtmlNode.ANONYMOUS_REGION_ID), new Header("strict-transport-security", TtmlNode.ANONYMOUS_REGION_ID), new Header("transfer-encoding", TtmlNode.ANONYMOUS_REGION_ID), new Header("user-agent", TtmlNode.ANONYMOUS_REGION_ID), new Header("vary", TtmlNode.ANONYMOUS_REGION_ID), new Header("via", TtmlNode.ANONYMOUS_REGION_ID), new Header("www-authenticate", TtmlNode.ANONYMOUS_REGION_ID)};
        NAME_TO_FIRST_INDEX = nameToFirstIndex();
    }

    private HpackDraft05() {
    }

    private static Map<ByteString, Integer> nameToFirstIndex() {
        Map linkedHashMap = new LinkedHashMap(STATIC_HEADER_TABLE.length);
        for (int i = 0; i < STATIC_HEADER_TABLE.length; i++) {
            if (!linkedHashMap.containsKey(STATIC_HEADER_TABLE[i].name)) {
                linkedHashMap.put(STATIC_HEADER_TABLE[i].name, Integer.valueOf(i));
            }
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }
}
