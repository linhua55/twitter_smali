package com.squareup.okhttp.internal.framed;

import com.google.android.exoplayer.util.NalUnitUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.ByteString;
import okio.ab;
import okio.f;
import okio.j;
import okio.q;

/* compiled from: Twttr */
final class Hpack {
    private static final Map<ByteString, Integer> NAME_TO_FIRST_INDEX;
    private static final int PREFIX_4_BITS = 15;
    private static final int PREFIX_5_BITS = 31;
    private static final int PREFIX_6_BITS = 63;
    private static final int PREFIX_7_BITS = 127;
    private static final Header[] STATIC_HEADER_TABLE;

    /* compiled from: Twttr */
    final class Reader {
        Header[] dynamicTable;
        int dynamicTableByteCount;
        int headerCount;
        private final List<Header> headerList;
        private int headerTableSizeSetting;
        private int maxDynamicTableByteCount;
        int nextHeaderIndex;
        private final j source;

        Reader(int i, ab abVar) {
            this.headerList = new ArrayList();
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
            this.headerTableSizeSetting = i;
            this.maxDynamicTableByteCount = i;
            this.source = q.a(abVar);
        }

        int maxDynamicTableByteCount() {
            return this.maxDynamicTableByteCount;
        }

        void headerTableSizeSetting(int i) {
            this.headerTableSizeSetting = i;
            this.maxDynamicTableByteCount = i;
            adjustDynamicTableByteCount();
        }

        private void adjustDynamicTableByteCount() {
            if (this.maxDynamicTableByteCount >= this.dynamicTableByteCount) {
                return;
            }
            if (this.maxDynamicTableByteCount == 0) {
                clearDynamicTable();
            } else {
                evictToRecoverBytes(this.dynamicTableByteCount - this.maxDynamicTableByteCount);
            }
        }

        private void clearDynamicTable() {
            this.headerList.clear();
            Arrays.fill(this.dynamicTable, null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private int evictToRecoverBytes(int i) {
            int i2 = 0;
            if (i > 0) {
                for (int length = this.dynamicTable.length - 1; length >= this.nextHeaderIndex && i > 0; length--) {
                    i -= this.dynamicTable[length].hpackSize;
                    this.dynamicTableByteCount -= this.dynamicTable[length].hpackSize;
                    this.headerCount--;
                    i2++;
                }
                System.arraycopy(this.dynamicTable, this.nextHeaderIndex + 1, this.dynamicTable, (this.nextHeaderIndex + 1) + i2, this.headerCount);
                this.nextHeaderIndex += i2;
            }
            return i2;
        }

        void readHeaders() throws IOException {
            while (!this.source.f()) {
                int i = this.source.i() & NalUnitUtil.EXTENDED_SAR;
                if (i == 128) {
                    throw new IOException("index == 0");
                } else if ((i & 128) == 128) {
                    readIndexedHeader(readInt(i, Hpack.PREFIX_7_BITS) - 1);
                } else if (i == 64) {
                    readLiteralHeaderWithIncrementalIndexingNewName();
                } else if ((i & 64) == 64) {
                    readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(i, Hpack.PREFIX_6_BITS) - 1);
                } else if ((i & 32) == 32) {
                    this.maxDynamicTableByteCount = readInt(i, Hpack.PREFIX_5_BITS);
                    if (this.maxDynamicTableByteCount < 0 || this.maxDynamicTableByteCount > this.headerTableSizeSetting) {
                        throw new IOException("Invalid dynamic table size update " + this.maxDynamicTableByteCount);
                    }
                    adjustDynamicTableByteCount();
                } else if (i == 16 || i == 0) {
                    readLiteralHeaderWithoutIndexingNewName();
                } else {
                    readLiteralHeaderWithoutIndexingIndexedName(readInt(i, Hpack.PREFIX_4_BITS) - 1);
                }
            }
        }

        public List<Header> getAndResetHeaderList() {
            List arrayList = new ArrayList(this.headerList);
            this.headerList.clear();
            return arrayList;
        }

        private void readIndexedHeader(int i) throws IOException {
            if (isStaticHeader(i)) {
                this.headerList.add(Hpack.STATIC_HEADER_TABLE[i]);
                return;
            }
            int dynamicTableIndex = dynamicTableIndex(i - Hpack.STATIC_HEADER_TABLE.length);
            if (dynamicTableIndex < 0 || dynamicTableIndex > this.dynamicTable.length - 1) {
                throw new IOException("Header index too large " + (i + 1));
            }
            this.headerList.add(this.dynamicTable[dynamicTableIndex]);
        }

        private int dynamicTableIndex(int i) {
            return (this.nextHeaderIndex + 1) + i;
        }

        private void readLiteralHeaderWithoutIndexingIndexedName(int i) throws IOException {
            this.headerList.add(new Header(getName(i), readByteString()));
        }

        private void readLiteralHeaderWithoutIndexingNewName() throws IOException {
            this.headerList.add(new Header(Hpack.checkLowercase(readByteString()), readByteString()));
        }

        private void readLiteralHeaderWithIncrementalIndexingIndexedName(int i) throws IOException {
            insertIntoDynamicTable(-1, new Header(getName(i), readByteString()));
        }

        private void readLiteralHeaderWithIncrementalIndexingNewName() throws IOException {
            insertIntoDynamicTable(-1, new Header(Hpack.checkLowercase(readByteString()), readByteString()));
        }

        private ByteString getName(int i) {
            if (isStaticHeader(i)) {
                return Hpack.STATIC_HEADER_TABLE[i].name;
            }
            return this.dynamicTable[dynamicTableIndex(i - Hpack.STATIC_HEADER_TABLE.length)].name;
        }

        private boolean isStaticHeader(int i) {
            return i >= 0 && i <= Hpack.STATIC_HEADER_TABLE.length - 1;
        }

        private void insertIntoDynamicTable(int i, Header header) {
            this.headerList.add(header);
            int i2 = header.hpackSize;
            if (i != -1) {
                i2 -= this.dynamicTable[dynamicTableIndex(i)].hpackSize;
            }
            if (i2 > this.maxDynamicTableByteCount) {
                clearDynamicTable();
                return;
            }
            int evictToRecoverBytes = evictToRecoverBytes((this.dynamicTableByteCount + i2) - this.maxDynamicTableByteCount);
            if (i == -1) {
                if (this.headerCount + 1 > this.dynamicTable.length) {
                    Object obj = new Header[(this.dynamicTable.length * 2)];
                    System.arraycopy(this.dynamicTable, 0, obj, this.dynamicTable.length, this.dynamicTable.length);
                    this.nextHeaderIndex = this.dynamicTable.length - 1;
                    this.dynamicTable = obj;
                }
                evictToRecoverBytes = this.nextHeaderIndex;
                this.nextHeaderIndex = evictToRecoverBytes - 1;
                this.dynamicTable[evictToRecoverBytes] = header;
                this.headerCount++;
            } else {
                this.dynamicTable[(evictToRecoverBytes + dynamicTableIndex(i)) + i] = header;
            }
            this.dynamicTableByteCount = i2 + this.dynamicTableByteCount;
        }

        private int readByte() throws IOException {
            return this.source.i() & NalUnitUtil.EXTENDED_SAR;
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
                i2 += (readByte & Hpack.PREFIX_7_BITS) << i3;
                i3 += 7;
            }
        }

        ByteString readByteString() throws IOException {
            int readByte = readByte();
            Object obj = (readByte & 128) == 128 ? 1 : null;
            readByte = readInt(readByte, Hpack.PREFIX_7_BITS);
            if (obj != null) {
                return ByteString.a(Huffman.get().decode(this.source.f((long) readByte)));
            }
            return this.source.c((long) readByte);
        }
    }

    /* compiled from: Twttr */
    final class Writer {
        private final f out;

        Writer(f fVar) {
            this.out = fVar;
        }

        void writeHeaders(List<Header> list) throws IOException {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ByteString e = ((Header) list.get(i)).name.e();
                Integer num = (Integer) Hpack.NAME_TO_FIRST_INDEX.get(e);
                if (num != null) {
                    writeInt(num.intValue() + 1, Hpack.PREFIX_4_BITS, 0);
                    writeByteString(((Header) list.get(i)).value);
                } else {
                    this.out.b(0);
                    writeByteString(e);
                    writeByteString(((Header) list.get(i)).value);
                }
            }
        }

        void writeInt(int i, int i2, int i3) throws IOException {
            if (i < i2) {
                this.out.b(i3 | i);
                return;
            }
            this.out.b(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.out.b((i4 & Hpack.PREFIX_7_BITS) | 128);
                i4 >>>= 7;
            }
            this.out.b(i4);
        }

        void writeByteString(ByteString byteString) throws IOException {
            writeInt(byteString.f(), Hpack.PREFIX_7_BITS, 0);
            this.out.a(byteString);
        }
    }

    static {
        STATIC_HEADER_TABLE = new Header[]{new Header(Header.TARGET_AUTHORITY, TtmlNode.ANONYMOUS_REGION_ID), new Header(Header.TARGET_METHOD, "GET"), new Header(Header.TARGET_METHOD, "POST"), new Header(Header.TARGET_PATH, "/"), new Header(Header.TARGET_PATH, "/index.html"), new Header(Header.TARGET_SCHEME, "http"), new Header(Header.TARGET_SCHEME, "https"), new Header(Header.RESPONSE_STATUS, "200"), new Header(Header.RESPONSE_STATUS, "204"), new Header(Header.RESPONSE_STATUS, "206"), new Header(Header.RESPONSE_STATUS, "304"), new Header(Header.RESPONSE_STATUS, "400"), new Header(Header.RESPONSE_STATUS, "404"), new Header(Header.RESPONSE_STATUS, "500"), new Header("accept-charset", TtmlNode.ANONYMOUS_REGION_ID), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", TtmlNode.ANONYMOUS_REGION_ID), new Header("accept-ranges", TtmlNode.ANONYMOUS_REGION_ID), new Header("accept", TtmlNode.ANONYMOUS_REGION_ID), new Header("access-control-allow-origin", TtmlNode.ANONYMOUS_REGION_ID), new Header("age", TtmlNode.ANONYMOUS_REGION_ID), new Header("allow", TtmlNode.ANONYMOUS_REGION_ID), new Header("authorization", TtmlNode.ANONYMOUS_REGION_ID), new Header("cache-control", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-disposition", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-encoding", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-language", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-length", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-location", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-range", TtmlNode.ANONYMOUS_REGION_ID), new Header("content-type", TtmlNode.ANONYMOUS_REGION_ID), new Header("cookie", TtmlNode.ANONYMOUS_REGION_ID), new Header("date", TtmlNode.ANONYMOUS_REGION_ID), new Header("etag", TtmlNode.ANONYMOUS_REGION_ID), new Header("expect", TtmlNode.ANONYMOUS_REGION_ID), new Header("expires", TtmlNode.ANONYMOUS_REGION_ID), new Header("from", TtmlNode.ANONYMOUS_REGION_ID), new Header("host", TtmlNode.ANONYMOUS_REGION_ID), new Header("if-match", TtmlNode.ANONYMOUS_REGION_ID), new Header("if-modified-since", TtmlNode.ANONYMOUS_REGION_ID), new Header("if-none-match", TtmlNode.ANONYMOUS_REGION_ID), new Header("if-range", TtmlNode.ANONYMOUS_REGION_ID), new Header("if-unmodified-since", TtmlNode.ANONYMOUS_REGION_ID), new Header("last-modified", TtmlNode.ANONYMOUS_REGION_ID), new Header("link", TtmlNode.ANONYMOUS_REGION_ID), new Header("location", TtmlNode.ANONYMOUS_REGION_ID), new Header("max-forwards", TtmlNode.ANONYMOUS_REGION_ID), new Header("proxy-authenticate", TtmlNode.ANONYMOUS_REGION_ID), new Header("proxy-authorization", TtmlNode.ANONYMOUS_REGION_ID), new Header("range", TtmlNode.ANONYMOUS_REGION_ID), new Header("referer", TtmlNode.ANONYMOUS_REGION_ID), new Header("refresh", TtmlNode.ANONYMOUS_REGION_ID), new Header("retry-after", TtmlNode.ANONYMOUS_REGION_ID), new Header("server", TtmlNode.ANONYMOUS_REGION_ID), new Header("set-cookie", TtmlNode.ANONYMOUS_REGION_ID), new Header("strict-transport-security", TtmlNode.ANONYMOUS_REGION_ID), new Header("transfer-encoding", TtmlNode.ANONYMOUS_REGION_ID), new Header("user-agent", TtmlNode.ANONYMOUS_REGION_ID), new Header("vary", TtmlNode.ANONYMOUS_REGION_ID), new Header("via", TtmlNode.ANONYMOUS_REGION_ID), new Header("www-authenticate", TtmlNode.ANONYMOUS_REGION_ID)};
        NAME_TO_FIRST_INDEX = nameToFirstIndex();
    }

    private Hpack() {
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

    private static ByteString checkLowercase(ByteString byteString) throws IOException {
        int i = 0;
        int f = byteString.f();
        while (i < f) {
            byte a = byteString.a(i);
            if (a < 65 || a > 90) {
                i++;
            } else {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.a());
            }
        }
        return byteString;
    }
}
