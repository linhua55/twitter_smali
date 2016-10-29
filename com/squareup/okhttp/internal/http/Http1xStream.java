package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.Response.Builder;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.Internal;
import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.io.RealConnection;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import okio.aa;
import okio.ab;
import okio.ac;
import okio.f;
import okio.i;
import okio.j;
import okio.n;
import okio.q;

/* compiled from: Twttr */
public final class Http1xStream implements HttpStream {
    private static final int STATE_CLOSED = 6;
    private static final int STATE_IDLE = 0;
    private static final int STATE_OPEN_REQUEST_BODY = 1;
    private static final int STATE_OPEN_RESPONSE_BODY = 4;
    private static final int STATE_READING_RESPONSE_BODY = 5;
    private static final int STATE_READ_RESPONSE_HEADERS = 3;
    private static final int STATE_WRITING_REQUEST_BODY = 2;
    private HttpEngine httpEngine;
    private final i sink;
    private final j source;
    private int state;
    private final StreamAllocation streamAllocation;

    /* compiled from: Twttr */
    abstract class AbstractSource implements ab {
        protected boolean closed;
        protected final n timeout;

        private AbstractSource() {
            this.timeout = new n(Http1xStream.this.source.timeout());
        }

        public ac timeout() {
            return this.timeout;
        }

        protected final void endOfInput() throws IOException {
            if (Http1xStream.this.state != Http1xStream.STATE_READING_RESPONSE_BODY) {
                throw new IllegalStateException("state: " + Http1xStream.this.state);
            }
            Http1xStream.this.detachTimeout(this.timeout);
            Http1xStream.this.state = Http1xStream.STATE_CLOSED;
            if (Http1xStream.this.streamAllocation != null) {
                Http1xStream.this.streamAllocation.streamFinished(Http1xStream.this);
            }
        }

        protected final void unexpectedEndOfInput() {
            if (Http1xStream.this.state != Http1xStream.STATE_CLOSED) {
                Http1xStream.this.state = Http1xStream.STATE_CLOSED;
                if (Http1xStream.this.streamAllocation != null) {
                    Http1xStream.this.streamAllocation.noNewStreams();
                    Http1xStream.this.streamAllocation.streamFinished(Http1xStream.this);
                }
            }
        }
    }

    /* compiled from: Twttr */
    final class ChunkedSink implements aa {
        private boolean closed;
        private final n timeout;

        private ChunkedSink() {
            this.timeout = new n(Http1xStream.this.sink.timeout());
        }

        public ac timeout() {
            return this.timeout;
        }

        public void write(f fVar, long j) throws IOException {
            if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (j != 0) {
                Http1xStream.this.sink.k(j);
                Http1xStream.this.sink.b("\r\n");
                Http1xStream.this.sink.write(fVar, j);
                Http1xStream.this.sink.b("\r\n");
            }
        }

        public synchronized void flush() throws IOException {
            if (!this.closed) {
                Http1xStream.this.sink.flush();
            }
        }

        public synchronized void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                Http1xStream.this.sink.b("0\r\n\r\n");
                Http1xStream.this.detachTimeout(this.timeout);
                Http1xStream.this.state = Http1xStream.STATE_READ_RESPONSE_HEADERS;
            }
        }
    }

    /* compiled from: Twttr */
    class ChunkedSource extends AbstractSource {
        private static final long NO_CHUNK_YET = -1;
        private long bytesRemainingInChunk;
        private boolean hasMoreChunks;
        private final HttpEngine httpEngine;

        ChunkedSource(HttpEngine httpEngine) throws IOException {
            super(null);
            this.bytesRemainingInChunk = NO_CHUNK_YET;
            this.hasMoreChunks = true;
            this.httpEngine = httpEngine;
        }

        public long read(f fVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (!this.hasMoreChunks) {
                return NO_CHUNK_YET;
            } else {
                if (this.bytesRemainingInChunk == 0 || this.bytesRemainingInChunk == NO_CHUNK_YET) {
                    readChunkSize();
                    if (!this.hasMoreChunks) {
                        return NO_CHUNK_YET;
                    }
                }
                long read = Http1xStream.this.source.read(fVar, Math.min(j, this.bytesRemainingInChunk));
                if (read == NO_CHUNK_YET) {
                    unexpectedEndOfInput();
                    throw new ProtocolException("unexpected end of stream");
                }
                this.bytesRemainingInChunk -= read;
                return read;
            }
        }

        private void readChunkSize() throws IOException {
            if (this.bytesRemainingInChunk != NO_CHUNK_YET) {
                Http1xStream.this.source.s();
            }
            try {
                this.bytesRemainingInChunk = Http1xStream.this.source.p();
                String trim = Http1xStream.this.source.s().trim();
                if (this.bytesRemainingInChunk < 0 || !(trim.isEmpty() || trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.bytesRemainingInChunk + trim + "\"");
                } else if (this.bytesRemainingInChunk == 0) {
                    this.hasMoreChunks = false;
                    this.httpEngine.receiveHeaders(Http1xStream.this.readHeaders());
                    endOfInput();
                }
            } catch (NumberFormatException e) {
                throw new ProtocolException(e.getMessage());
            }
        }

        public void close() throws IOException {
            if (!this.closed) {
                if (this.hasMoreChunks && !Util.discard(this, 100, TimeUnit.MILLISECONDS)) {
                    unexpectedEndOfInput();
                }
                this.closed = true;
            }
        }
    }

    /* compiled from: Twttr */
    final class FixedLengthSink implements aa {
        private long bytesRemaining;
        private boolean closed;
        private final n timeout;

        private FixedLengthSink(long j) {
            this.timeout = new n(Http1xStream.this.sink.timeout());
            this.bytesRemaining = j;
        }

        public ac timeout() {
            return this.timeout;
        }

        public void write(f fVar, long j) throws IOException {
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            Util.checkOffsetAndCount(fVar.a(), 0, j);
            if (j > this.bytesRemaining) {
                throw new ProtocolException("expected " + this.bytesRemaining + " bytes but received " + j);
            }
            Http1xStream.this.sink.write(fVar, j);
            this.bytesRemaining -= j;
        }

        public void flush() throws IOException {
            if (!this.closed) {
                Http1xStream.this.sink.flush();
            }
        }

        public void close() throws IOException {
            if (!this.closed) {
                this.closed = true;
                if (this.bytesRemaining > 0) {
                    throw new ProtocolException("unexpected end of stream");
                }
                Http1xStream.this.detachTimeout(this.timeout);
                Http1xStream.this.state = Http1xStream.STATE_READ_RESPONSE_HEADERS;
            }
        }
    }

    /* compiled from: Twttr */
    class FixedLengthSource extends AbstractSource {
        private long bytesRemaining;

        public FixedLengthSource(long j) throws IOException {
            super(null);
            this.bytesRemaining = j;
            if (this.bytesRemaining == 0) {
                endOfInput();
            }
        }

        public long read(f fVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (this.bytesRemaining == 0) {
                return -1;
            } else {
                long read = Http1xStream.this.source.read(fVar, Math.min(this.bytesRemaining, j));
                if (read == -1) {
                    unexpectedEndOfInput();
                    throw new ProtocolException("unexpected end of stream");
                }
                this.bytesRemaining -= read;
                if (this.bytesRemaining == 0) {
                    endOfInput();
                }
                return read;
            }
        }

        public void close() throws IOException {
            if (!this.closed) {
                if (!(this.bytesRemaining == 0 || Util.discard(this, 100, TimeUnit.MILLISECONDS))) {
                    unexpectedEndOfInput();
                }
                this.closed = true;
            }
        }
    }

    /* compiled from: Twttr */
    class UnknownLengthSource extends AbstractSource {
        private boolean inputExhausted;

        private UnknownLengthSource() {
            super(null);
        }

        public long read(f fVar, long j) throws IOException {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.closed) {
                throw new IllegalStateException("closed");
            } else if (this.inputExhausted) {
                return -1;
            } else {
                long read = Http1xStream.this.source.read(fVar, j);
                if (read != -1) {
                    return read;
                }
                this.inputExhausted = true;
                endOfInput();
                return -1;
            }
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

    public Http1xStream(StreamAllocation streamAllocation, j jVar, i iVar) {
        this.state = STATE_IDLE;
        this.streamAllocation = streamAllocation;
        this.source = jVar;
        this.sink = iVar;
    }

    public void setHttpEngine(HttpEngine httpEngine) {
        this.httpEngine = httpEngine;
    }

    public aa createRequestBody(Request request, long j) throws IOException {
        if ("chunked".equalsIgnoreCase(request.header("Transfer-Encoding"))) {
            return newChunkedSink();
        }
        if (j != -1) {
            return newFixedLengthSink(j);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public void cancel() {
        RealConnection connection = this.streamAllocation.connection();
        if (connection != null) {
            connection.cancel();
        }
    }

    public void writeRequestHeaders(Request request) throws IOException {
        this.httpEngine.writingRequestHeaders();
        writeRequest(request.headers(), RequestLine.get(request, this.httpEngine.getConnection().getRoute().getProxy().type()));
    }

    public Builder readResponseHeaders() throws IOException {
        return readResponse();
    }

    public ResponseBody openResponseBody(Response response) throws IOException {
        return new RealResponseBody(response.headers(), q.a(getTransferStream(response)));
    }

    private ab getTransferStream(Response response) throws IOException {
        if (!HttpEngine.hasBody(response)) {
            return newFixedLengthSource(0);
        }
        if ("chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) {
            return newChunkedSource(this.httpEngine);
        }
        long contentLength = OkHeaders.contentLength(response);
        if (contentLength != -1) {
            return newFixedLengthSource(contentLength);
        }
        return newUnknownLengthSource();
    }

    public boolean isClosed() {
        return this.state == STATE_CLOSED;
    }

    public void finishRequest() throws IOException {
        this.sink.flush();
    }

    public void writeRequest(Headers headers, String str) throws IOException {
        if (this.state != 0) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.sink.b(str).b("\r\n");
        int size = headers.size();
        for (int i = STATE_IDLE; i < size; i += STATE_OPEN_REQUEST_BODY) {
            this.sink.b(headers.name(i)).b(": ").b(headers.value(i)).b("\r\n");
        }
        this.sink.b("\r\n");
        this.state = STATE_OPEN_REQUEST_BODY;
    }

    public Builder readResponse() throws IOException {
        if (this.state == STATE_OPEN_REQUEST_BODY || this.state == STATE_READ_RESPONSE_HEADERS) {
            Builder headers;
            StatusLine parse;
            do {
                try {
                    parse = StatusLine.parse(this.source.s());
                    headers = new Builder().protocol(parse.protocol).code(parse.code).message(parse.message).headers(readHeaders());
                } catch (Throwable e) {
                    IOException iOException = new IOException("unexpected end of stream on " + this.streamAllocation);
                    iOException.initCause(e);
                    throw iOException;
                }
            } while (parse.code == 100);
            this.state = STATE_OPEN_RESPONSE_BODY;
            return headers;
        }
        throw new IllegalStateException("state: " + this.state);
    }

    public Headers readHeaders() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String s = this.source.s();
            if (s.length() == 0) {
                return builder.build();
            }
            Internal.instance.addLenient(builder, s);
        }
    }

    public aa newChunkedSink() {
        if (this.state != STATE_OPEN_REQUEST_BODY) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = STATE_WRITING_REQUEST_BODY;
        return new ChunkedSink();
    }

    public aa newFixedLengthSink(long j) {
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

    public ab newFixedLengthSource(long j) throws IOException {
        if (this.state != STATE_OPEN_RESPONSE_BODY) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = STATE_READING_RESPONSE_BODY;
        return new FixedLengthSource(j);
    }

    public ab newChunkedSource(HttpEngine httpEngine) throws IOException {
        if (this.state != STATE_OPEN_RESPONSE_BODY) {
            throw new IllegalStateException("state: " + this.state);
        }
        this.state = STATE_READING_RESPONSE_BODY;
        return new ChunkedSource(httpEngine);
    }

    public ab newUnknownLengthSource() throws IOException {
        if (this.state != STATE_OPEN_RESPONSE_BODY) {
            throw new IllegalStateException("state: " + this.state);
        } else if (this.streamAllocation == null) {
            throw new IllegalStateException("streamAllocation == null");
        } else {
            this.state = STATE_READING_RESPONSE_BODY;
            this.streamAllocation.noNewStreams();
            return new UnknownLengthSource();
        }
    }

    private void detachTimeout(n nVar) {
        ac a = nVar.a();
        nVar.a(ac.NONE);
        a.clearDeadline();
        a.clearTimeout();
    }
}
