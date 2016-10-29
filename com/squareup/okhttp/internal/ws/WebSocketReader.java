package com.squareup.okhttp.internal.ws;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.ExoPlayer.Factory;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.ws.WebSocket;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import okio.ab;
import okio.ac;
import okio.f;
import okio.j;
import okio.q;

/* compiled from: Twttr */
public final class WebSocketReader {
    private boolean closed;
    private long frameBytesRead;
    private final FrameCallback frameCallback;
    private long frameLength;
    private final ab framedMessageSource;
    private final boolean isClient;
    private boolean isControlFrame;
    private boolean isFinalFrame;
    private boolean isMasked;
    private final byte[] maskBuffer;
    private final byte[] maskKey;
    private boolean messageClosed;
    private int opcode;
    private final j source;

    /* compiled from: Twttr */
    public interface FrameCallback {
        void onClose(int i, String str);

        void onMessage(ResponseBody responseBody) throws IOException;

        void onPing(f fVar);

        void onPong(f fVar);
    }

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.ws.WebSocketReader.1 */
    class AnonymousClass1 extends ResponseBody {
        final /* synthetic */ j val$source;
        final /* synthetic */ MediaType val$type;

        AnonymousClass1(MediaType mediaType, j jVar) {
            this.val$type = mediaType;
            this.val$source = jVar;
        }

        public MediaType contentType() {
            return this.val$type;
        }

        public long contentLength() throws IOException {
            return -1;
        }

        public j source() throws IOException {
            return this.val$source;
        }
    }

    /* compiled from: Twttr */
    final class FramedMessageSource implements ab {
        private FramedMessageSource() {
        }

        public long read(f fVar, long j) throws IOException {
            if (WebSocketReader.this.closed) {
                throw new IOException("closed");
            } else if (WebSocketReader.this.messageClosed) {
                throw new IllegalStateException("closed");
            } else {
                long a;
                if (WebSocketReader.this.frameBytesRead == WebSocketReader.this.frameLength) {
                    if (WebSocketReader.this.isFinalFrame) {
                        return -1;
                    }
                    WebSocketReader.this.readUntilNonControlFrame();
                    if (WebSocketReader.this.opcode != 0) {
                        throw new ProtocolException("Expected continuation opcode. Got: " + Integer.toHexString(WebSocketReader.this.opcode));
                    } else if (WebSocketReader.this.isFinalFrame && WebSocketReader.this.frameLength == 0) {
                        return -1;
                    }
                }
                long min = Math.min(j, WebSocketReader.this.frameLength - WebSocketReader.this.frameBytesRead);
                if (WebSocketReader.this.isMasked) {
                    a = (long) WebSocketReader.this.source.a(WebSocketReader.this.maskBuffer, 0, (int) Math.min(min, (long) WebSocketReader.this.maskBuffer.length));
                    if (a == -1) {
                        throw new EOFException();
                    }
                    WebSocketProtocol.toggleMask(WebSocketReader.this.maskBuffer, a, WebSocketReader.this.maskKey, WebSocketReader.this.frameBytesRead);
                    fVar.b(WebSocketReader.this.maskBuffer, 0, (int) a);
                } else {
                    a = WebSocketReader.this.source.read(fVar, min);
                    if (a == -1) {
                        throw new EOFException();
                    }
                }
                WebSocketReader.access$314(WebSocketReader.this, a);
                return a;
            }
        }

        public ac timeout() {
            return WebSocketReader.this.source.timeout();
        }

        public void close() throws IOException {
            if (!WebSocketReader.this.messageClosed) {
                WebSocketReader.this.messageClosed = true;
                if (!WebSocketReader.this.closed) {
                    WebSocketReader.this.source.g(WebSocketReader.this.frameLength - WebSocketReader.this.frameBytesRead);
                    while (!WebSocketReader.this.isFinalFrame) {
                        WebSocketReader.this.readUntilNonControlFrame();
                        WebSocketReader.this.source.g(WebSocketReader.this.frameLength);
                    }
                }
            }
        }
    }

    static /* synthetic */ long access$314(WebSocketReader webSocketReader, long j) {
        long j2 = webSocketReader.frameBytesRead + j;
        webSocketReader.frameBytesRead = j2;
        return j2;
    }

    public WebSocketReader(boolean z, j jVar, FrameCallback frameCallback) {
        this.framedMessageSource = new FramedMessageSource();
        this.maskKey = new byte[4];
        this.maskBuffer = new byte[2048];
        if (jVar == null) {
            throw new NullPointerException("source == null");
        } else if (frameCallback == null) {
            throw new NullPointerException("frameCallback == null");
        } else {
            this.isClient = z;
            this.source = jVar;
            this.frameCallback = frameCallback;
        }
    }

    public void processNextFrame() throws IOException {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }

    private void readHeader() throws IOException {
        boolean z = true;
        if (this.closed) {
            throw new IOException("closed");
        }
        boolean z2;
        int i = this.source.i() & NalUnitUtil.EXTENDED_SAR;
        this.opcode = i & 15;
        this.isFinalFrame = (i & 128) != 0;
        if ((i & 8) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.isControlFrame = z2;
        if (!this.isControlFrame || this.isFinalFrame) {
            boolean z3 = (i & 64) != 0;
            boolean z4;
            if ((i & 32) != 0) {
                z4 = true;
            } else {
                z4 = false;
            }
            if ((i & 16) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z3 || r3 || r0) {
                throw new ProtocolException("Reserved flags are unsupported.");
            }
            int i2 = this.source.i() & NalUnitUtil.EXTENDED_SAR;
            if ((i2 & 128) == 0) {
                z = false;
            }
            this.isMasked = z;
            if (this.isMasked == this.isClient) {
                throw new ProtocolException("Client-sent frames must be masked. Server sent must not.");
            }
            this.frameLength = (long) (i2 & 127);
            if (this.frameLength == 126) {
                this.frameLength = ((long) this.source.j()) & 65535;
            } else if (this.frameLength == 127) {
                this.frameLength = this.source.l();
                if (this.frameLength < 0) {
                    throw new ProtocolException("Frame length 0x" + Long.toHexString(this.frameLength) + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            this.frameBytesRead = 0;
            if (this.isControlFrame && this.frameLength > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            } else if (this.isMasked) {
                this.source.a(this.maskKey);
                return;
            } else {
                return;
            }
        }
        throw new ProtocolException("Control frames must be final.");
    }

    private void readControlFrame() throws IOException {
        f fVar = null;
        if (this.frameBytesRead < this.frameLength) {
            f fVar2 = new f();
            if (this.isClient) {
                this.source.a(fVar2, this.frameLength);
                fVar = fVar2;
            } else {
                while (this.frameBytesRead < this.frameLength) {
                    int a = this.source.a(this.maskBuffer, 0, (int) Math.min(this.frameLength - this.frameBytesRead, (long) this.maskBuffer.length));
                    if (a == -1) {
                        throw new EOFException();
                    }
                    WebSocketProtocol.toggleMask(this.maskBuffer, (long) a, this.maskKey, this.frameBytesRead);
                    fVar2.b(this.maskBuffer, 0, a);
                    this.frameBytesRead += (long) a;
                }
                fVar = fVar2;
            }
        }
        switch (this.opcode) {
            case ChunkHeader.SIZE_IN_BYTES /*8*/:
                int j;
                String r;
                String str = TtmlNode.ANONYMOUS_REGION_ID;
                if (fVar != null) {
                    long a2 = fVar.a();
                    if (a2 == 1) {
                        throw new ProtocolException("Malformed close payload length of 1.");
                    } else if (a2 != 0) {
                        j = fVar.j();
                        if (j < ExoPlayerImplInternal.MSG_SEEK_COMPLETE || j >= Factory.DEFAULT_MIN_REBUFFER_MS) {
                            throw new ProtocolException("Code must be in range [1000,5000): " + j);
                        } else if ((j < 1004 || j > 1006) && (j < 1012 || j > 2999)) {
                            r = fVar.r();
                            this.frameCallback.onClose(j, r);
                            this.closed = true;
                        } else {
                            throw new ProtocolException("Code " + j + " is reserved and may not be used.");
                        }
                    }
                }
                r = str;
                j = ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
                this.frameCallback.onClose(j, r);
                this.closed = true;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                this.frameCallback.onPing(fVar);
            case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                this.frameCallback.onPong(fVar);
            default:
                throw new ProtocolException("Unknown control opcode: " + Integer.toHexString(this.opcode));
        }
    }

    private void readMessageFrame() throws IOException {
        MediaType mediaType;
        switch (this.opcode) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                mediaType = WebSocket.TEXT;
                break;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                mediaType = WebSocket.BINARY;
                break;
            default:
                throw new ProtocolException("Unknown opcode: " + Integer.toHexString(this.opcode));
        }
        ResponseBody anonymousClass1 = new AnonymousClass1(mediaType, q.a(this.framedMessageSource));
        this.messageClosed = false;
        this.frameCallback.onMessage(anonymousClass1);
        if (!this.messageClosed) {
            throw new IllegalStateException("Listener failed to call close on message payload.");
        }
    }

    private void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (this.isControlFrame) {
                readControlFrame();
            } else {
                return;
            }
        }
    }
}
