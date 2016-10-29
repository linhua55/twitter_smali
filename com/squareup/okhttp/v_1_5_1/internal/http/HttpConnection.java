package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.Connection;
import com.squareup.okhttp.v_1_5_1.ConnectionPool;
import com.squareup.okhttp.v_1_5_1.Protocol;
import com.squareup.okhttp.v_1_5_1.internal.Util;
import com.squareup.okhttp.v_1_5_1.internal.http.Headers.Builder;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSink;
import com.squareup.okhttp.v_1_5_1.internal.okio.BufferedSource;
import com.squareup.okhttp.v_1_5_1.internal.okio.Deadline;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Okio;
import com.squareup.okhttp.v_1_5_1.internal.okio.Sink;
import com.squareup.okhttp.v_1_5_1.internal.okio.Source;
import java.io.IOException;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.ProtocolException;
import java.net.Socket;

/* compiled from: Twttr */
public final class HttpConnection {
    private static final String CRLF = "\r\n";
    private static final byte[] FINAL_CHUNK;
    private static final byte[] HEX_DIGITS;
    private static final int ON_IDLE_CLOSE = 2;
    private static final int ON_IDLE_HOLD = 0;
    private static final int ON_IDLE_POOL = 1;
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    private final Connection connection;
    private int onIdle;
    private final ConnectionPool pool;
    private final BufferedSink sink;
    private final BufferedSource source;
    private int state;

    /* compiled from: Twttr */
    class AbstractSource {
        protected final OutputStream cacheBody;
        private final CacheRequest cacheRequest;
        protected boolean closed;

        AbstractSource(CacheRequest cacheRequest) throws IOException {
            OutputStream body = cacheRequest != null ? cacheRequest.getBody() : null;
            if (body == null) {
                cacheRequest = null;
            }
            this.cacheBody = body;
            this.cacheRequest = cacheRequest;
        }

        protected final void cacheWrite(OkBuffer okBuffer, long j) throws IOException {
            if (this.cacheBody != null) {
                Okio.copy(okBuffer, okBuffer.size() - j, j, this.cacheBody);
            }
        }

        protected final void endOfInput(boolean z) throws IOException {
            if (HttpConnection.this.state != HttpConnection.STATE_READING_RESPONSE_BODY) {
                throw new IllegalStateException("state: " + HttpConnection.this.state);
            }
            if (this.cacheRequest != null) {
                this.cacheBody.close();
            }
            HttpConnection.this.state = HttpConnection.STATE_IDLE;
            if (z && HttpConnection.this.onIdle == HttpConnection.STATE_OPEN_REQUEST_BODY) {
                HttpConnection.this.onIdle = HttpConnection.STATE_IDLE;
                HttpConnection.this.pool.recycle(HttpConnection.this.connection);
            } else if (HttpConnection.this.onIdle == HttpConnection.STATE_WRITING_REQUEST_BODY) {
                HttpConnection.this.state = HttpConnection.STATE_CLOSED;
                HttpConnection.this.connection.close();
            }
        }

        protected final void unexpectedEndOfInput() {
            if (this.cacheRequest != null) {
                this.cacheRequest.abort();
            }
            Util.closeQuietly(HttpConnection.this.connection);
            HttpConnection.this.state = HttpConnection.STATE_CLOSED;
        }
    }

    /* compiled from: Twttr */
    final class ChunkedSink implements Sink {
        private boolean closed;
        private final byte[] hex;

        private ChunkedSink() {
            this.hex = new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 0, (byte) 13, (byte) 10};
        }

        public Sink deadline(Deadline deadline) {
            return this;
        }

        public void write(OkBuffer okBuffer, long j) throws IOException {
            if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (j != 0) {
                writeHex(j);
                HttpConnection.this.sink.write(okBuffer, j);
                HttpConnection.this.sink.writeUtf8(HttpConnection.CRLF);
            }
        }

        public synchronized void flush() throws IOException {
            if (!this.closed) {
                HttpConnection.this.sink.flush();
            }
        }

        public synchronized void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                HttpConnection.this.sink.write(HttpConnection.FINAL_CHUNK);
                HttpConnection.this.state = HttpConnection.STATE_READ_RESPONSE_HEADERS;
            }
        }

        private void writeHex(long j) throws IOException {
            int i = 16;
            do {
                i--;
                this.hex[i] = HttpConnection.HEX_DIGITS[(int) (15 & j)];
                j >>>= HttpConnection.STATE_OPEN_RESPONSE_BODY;
            } while (j != 0);
            HttpConnection.this.sink.write(this.hex, i, this.hex.length - i);
        }
    }

    /* compiled from: Twttr */
    class ChunkedSource extends AbstractSource implements Source {
        private static final int NO_CHUNK_YET = -1;
        private int bytesRemainingInChunk;
        private boolean hasMoreChunks;
        private final HttpEngine httpEngine;

        ChunkedSource(CacheRequest cacheRequest, HttpEngine httpEngine) throws IOException {
            super(cacheRequest);
            this.bytesRemainingInChunk = NO_CHUNK_YET;
            this.hasMoreChunks = true;
            this.httpEngine = httpEngine;
        }

        public long read(OkBuffer okBuffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (!this.hasMoreChunks) {
                return -1;
            } else {
                if (this.bytesRemainingInChunk == 0 || this.bytesRemainingInChunk == NO_CHUNK_YET) {
                    readChunkSize();
                    if (!this.hasMoreChunks) {
                        return -1;
                    }
                }
                long read = HttpConnection.this.source.read(okBuffer, Math.min(j, (long) this.bytesRemainingInChunk));
                if (read == -1) {
                    unexpectedEndOfInput();
                    throw new IOException("unexpected end of stream");
                }
                this.bytesRemainingInChunk = (int) (((long) this.bytesRemainingInChunk) - read);
                cacheWrite(okBuffer, read);
                return read;
            }
        }

        private void readChunkSize() throws IOException {
            if (this.bytesRemainingInChunk != NO_CHUNK_YET) {
                HttpConnection.this.source.readUtf8Line(true);
            }
            String readUtf8Line = HttpConnection.this.source.readUtf8Line(true);
            int indexOf = readUtf8Line.indexOf(";");
            if (indexOf != NO_CHUNK_YET) {
                readUtf8Line = readUtf8Line.substring(HttpConnection.STATE_IDLE, indexOf);
            }
            try {
                this.bytesRemainingInChunk = Integer.parseInt(readUtf8Line.trim(), 16);
                if (this.bytesRemainingInChunk == 0) {
                    this.hasMoreChunks = false;
                    Builder builder = new Builder();
                    HttpConnection.this.readHeaders(builder);
                    this.httpEngine.receiveHeaders(builder.build());
                    endOfInput(true);
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException("Expected a hex chunk size but was " + readUtf8Line);
            }
        }

        public Source deadline(Deadline deadline) {
            HttpConnection.this.source.deadline(deadline);
            return this;
        }

        public void close() throws IOException {
            if (!this.closed) {
                if (this.hasMoreChunks && !HttpConnection.this.discard(this, 100)) {
                    unexpectedEndOfInput();
                }
                this.closed = true;
            }
        }
    }

    /* compiled from: Twttr */
    final class FixedLengthSink implements Sink {
        private long bytesRemaining;
        private boolean closed;

        private FixedLengthSink(long j) {
            this.bytesRemaining = j;
        }

        public Sink deadline(Deadline deadline) {
            return this;
        }

        public void write(OkBuffer okBuffer, long j) throws IOException {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            Util.checkOffsetAndCount(okBuffer.size(), 0, j);
            if (j > this.bytesRemaining) {
                throw new ProtocolException("expected " + this.bytesRemaining + " bytes but received " + j);
            }
            HttpConnection.this.sink.write(okBuffer, j);
            this.bytesRemaining -= j;
        }

        public void flush() throws IOException {
            if (!this.closed) {
                HttpConnection.this.sink.flush();
            }
        }

        public void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                if (this.bytesRemaining > 0) {
                    throw new ProtocolException("unexpected end of stream");
                }
                HttpConnection.this.state = HttpConnection.STATE_READ_RESPONSE_HEADERS;
            }
        }
    }

    /* compiled from: Twttr */
    class FixedLengthSource extends AbstractSource implements Source {
        private long bytesRemaining;

        public FixedLengthSource(CacheRequest cacheRequest, long j) throws IOException {
            super(cacheRequest);
            this.bytesRemaining = j;
            if (this.bytesRemaining == 0) {
                endOfInput(true);
            }
        }

        public long read(OkBuffer okBuffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (this.bytesRemaining == 0) {
                return -1;
            } else {
                long read = HttpConnection.this.source.read(okBuffer, Math.min(this.bytesRemaining, j));
                if (read == -1) {
                    unexpectedEndOfInput();
                    throw new ProtocolException("unexpected end of stream");
                }
                this.bytesRemaining -= read;
                cacheWrite(okBuffer, read);
                if (this.bytesRemaining == 0) {
                    endOfInput(true);
                }
                return read;
            }
        }

        public Source deadline(Deadline deadline) {
            HttpConnection.this.source.deadline(deadline);
            return this;
        }

        public void close() throws IOException {
            if (!this.closed) {
                if (!(this.bytesRemaining == 0 || HttpConnection.this.discard(this, 100))) {
                    unexpectedEndOfInput();
                }
                this.closed = true;
            }
        }
    }

    /* compiled from: Twttr */
    class UnknownLengthSource extends AbstractSource implements Source {
        private boolean inputExhausted;

        UnknownLengthSource(CacheRequest cacheRequest) throws IOException {
            super(cacheRequest);
        }

        public long read(OkBuffer okBuffer, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (this.inputExhausted) {
                return -1;
            } else {
                long read = HttpConnection.this.source.read(okBuffer, j);
                if (read == -1) {
                    this.inputExhausted = true;
                    endOfInput(false);
                    return -1;
                }
                cacheWrite(okBuffer, read);
                return read;
            }
        }

        public Source deadline(Deadline deadline) {
            HttpConnection.this.source.deadline(deadline);
            return this;
        }

        public void close() throws IOException {
            if (!this.closed) {
                if (!this.inputExhausted) {
                    unexpectedEndOfInput();
                }
                this.closed = true;
            }
        }
    }

    public HttpConnection(ConnectionPool connectionPool, Connection connection, BufferedSource bufferedSource, BufferedSink bufferedSink) {
        this.state = STATE_IDLE;
        this.onIdle = STATE_IDLE;
        this.pool = connectionPool;
        this.connection = connection;
        this.source = bufferedSource;
        this.sink = bufferedSink;
    }

    public void poolOnIdle() {
        this.onIdle = STATE_OPEN_REQUEST_BODY;
        if (this.state == 0) {
            this.onIdle = STATE_IDLE;
            this.pool.recycle(this.connection);
        }
    }

    public void closeOnIdle() throws IOException {
        this.onIdle = STATE_WRITING_REQUEST_BODY;
        if (this.state == 0) {
            this.state = STATE_CLOSED;
            this.connection.close();
        }
    }

    public boolean isClosed() {
        return this.state == STATE_CLOSED;
    }

    public void flush() throws IOException {
        this.sink.flush();
    }

    public void writeRequest(Headers headers, String str) throws IOException {
        if (this.state != 0) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.sink.writeUtf8(str).writeUtf8(CRLF);
        for (int i = STATE_IDLE; i < headers.size(); i += STATE_OPEN_REQUEST_BODY) {
            this.sink.writeUtf8(headers.name(i)).writeUtf8(": ").writeUtf8(headers.value(i)).writeUtf8(CRLF);
        }
        this.sink.writeUtf8(CRLF);
        this.state = STATE_OPEN_REQUEST_BODY;
    }

    public Response.Builder readResponse() throws IOException {
        if (this.state == STATE_OPEN_REQUEST_BODY || this.state == STATE_READ_RESPONSE_HEADERS) {
            Response.Builder statusLine;
            StatusLine statusLine2;
            do {
                statusLine2 = new StatusLine(this.source.readUtf8Line(true));
                statusLine = new Response.Builder().statusLine(statusLine2);
                Builder builder = new Builder();
                readHeaders(builder);
                builder.set(OkHeaders.SELECTED_PROTOCOL, Protocol.HTTP_11.name.utf8());
                statusLine.headers(builder.build());
            } while (statusLine2.code() == 100);
            this.state = STATE_OPEN_RESPONSE_BODY;
            return statusLine;
        }
        throw new IllegalStateException("state: " + this.state);
    }

    public void readHeaders(Builder builder) throws IOException {
        while (true) {
            String readUtf8Line = this.source.readUtf8Line(true);
            if (readUtf8Line.length() != 0) {
                builder.addLine(readUtf8Line);
            } else {
                return;
            }
        }
    }

    public boolean discard(Source source, int i) {
        Socket socket = this.connection.getSocket();
        int soTimeout;
        try {
            soTimeout = socket.getSoTimeout();
            socket.setSoTimeout(i);
            boolean skipAll = Util.skipAll(source, i);
            socket.setSoTimeout(soTimeout);
            return skipAll;
        } catch (IOException e) {
            return false;
        } catch (Throwable th) {
            socket.setSoTimeout(soTimeout);
        }
    }

    public Sink newChunkedSink() {
        if (this.state != STATE_OPEN_REQUEST_BODY) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = STATE_WRITING_REQUEST_BODY;
        return new ChunkedSink();
    }

    public Sink newFixedLengthSink(long j) {
        if (this.state != STATE_OPEN_REQUEST_BODY) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = STATE_WRITING_REQUEST_BODY;
        return new FixedLengthSink(j, null);
    }

    public void writeRequestBody(RetryableSink retryableSink) throws IOException {
        if (this.state != STATE_OPEN_REQUEST_BODY) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = STATE_READ_RESPONSE_HEADERS;
        retryableSink.writeToSocket(this.sink);
    }

    public Source newFixedLengthSource(CacheRequest cacheRequest, long j) throws IOException {
        if (this.state != STATE_OPEN_RESPONSE_BODY) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = STATE_READING_RESPONSE_BODY;
        return new FixedLengthSource(cacheRequest, j);
    }

    public void emptyResponseBody() throws IOException {
        newFixedLengthSource(null, 0);
    }

    public Source newChunkedSource(CacheRequest cacheRequest, HttpEngine httpEngine) throws IOException {
        if (this.state != STATE_OPEN_RESPONSE_BODY) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = STATE_READING_RESPONSE_BODY;
        return new ChunkedSource(cacheRequest, httpEngine);
    }

    public Source newUnknownLengthSource(CacheRequest cacheRequest) throws IOException {
        if (this.state != STATE_OPEN_RESPONSE_BODY) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = STATE_READING_RESPONSE_BODY;
        return new UnknownLengthSource(cacheRequest);
    }

    static {
        HEX_DIGITS = new byte[]{(byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102};
        FINAL_CHUNK = new byte[]{(byte) 48, (byte) 13, (byte) 10, (byte) 13, (byte) 10};
    }
}
