package com.google.android.exoplayer.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCrypto;
import android.media.MediaDrm;
import android.media.MediaDrm.OnEventListener;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.google.android.exoplayer.drm.DrmInitData.SchemeInitData;
import com.google.android.exoplayer.extractor.mp4.PsshAtomUtil;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import java.util.HashMap;
import java.util.UUID;

@TargetApi(18)
/* compiled from: Twttr */
public class StreamingDrmSessionManager implements DrmSessionManager {
    private static final int MSG_KEYS = 1;
    private static final int MSG_PROVISION = 0;
    public static final String PLAYREADY_CUSTOM_DATA_KEY = "PRCustomData";
    public static final UUID PLAYREADY_UUID;
    public static final UUID WIDEVINE_UUID;
    final MediaDrmCallback callback;
    private final Handler eventHandler;
    private final EventListener eventListener;
    private Exception lastException;
    private MediaCrypto mediaCrypto;
    private final MediaDrm mediaDrm;
    final MediaDrmHandler mediaDrmHandler;
    private int openCount;
    private final HashMap<String, String> optionalKeyRequestParameters;
    private Handler postRequestHandler;
    final PostResponseHandler postResponseHandler;
    private boolean provisioningInProgress;
    private HandlerThread requestHandlerThread;
    private SchemeInitData schemeInitData;
    private byte[] sessionId;
    private int state;
    final UUID uuid;

    /* compiled from: Twttr */
    /* renamed from: com.google.android.exoplayer.drm.StreamingDrmSessionManager.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ Exception val$e;

        AnonymousClass2(Exception exception) {
            this.val$e = exception;
        }

        public void run() {
            StreamingDrmSessionManager.this.eventListener.onDrmSessionManagerError(this.val$e);
        }
    }

    /* compiled from: Twttr */
    public interface EventListener {
        void onDrmKeysLoaded();

        void onDrmSessionManagerError(Exception exception);
    }

    /* compiled from: Twttr */
    class MediaDrmEventListener implements OnEventListener {
        private MediaDrmEventListener() {
        }

        public void onEvent(MediaDrm mediaDrm, byte[] bArr, int i, int i2, byte[] bArr2) {
            StreamingDrmSessionManager.this.mediaDrmHandler.sendEmptyMessage(i);
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* compiled from: Twttr */
    class MediaDrmHandler extends Handler {
        public MediaDrmHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            if (StreamingDrmSessionManager.this.openCount == 0) {
                return;
            }
            if (StreamingDrmSessionManager.this.state == 3 || StreamingDrmSessionManager.this.state == 4) {
                switch (message.what) {
                    case StreamingDrmSessionManager.MSG_KEYS /*1*/:
                        StreamingDrmSessionManager.this.state = 3;
                        StreamingDrmSessionManager.this.postProvisionRequest();
                    case Buffer.FLAG_DECODE_ONLY /*2*/:
                        StreamingDrmSessionManager.this.postKeyRequest();
                    case Util.TYPE_OTHER /*3*/:
                        StreamingDrmSessionManager.this.state = 3;
                        StreamingDrmSessionManager.this.onError(new KeysExpiredException());
                    default:
                }
            }
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* compiled from: Twttr */
    class PostRequestHandler extends Handler {
        public PostRequestHandler(Looper looper) {
            super(looper);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void handleMessage(android.os.Message r4) {
            /*
            r3 = this;
            r0 = r4.what;	 Catch:{ Exception -> 0x000b }
            switch(r0) {
                case 0: goto L_0x001a;
                case 1: goto L_0x002b;
                default: goto L_0x0005;
            };	 Catch:{ Exception -> 0x000b }
        L_0x0005:
            r0 = new java.lang.RuntimeException;	 Catch:{ Exception -> 0x000b }
            r0.<init>();	 Catch:{ Exception -> 0x000b }
            throw r0;	 Catch:{ Exception -> 0x000b }
        L_0x000b:
            r0 = move-exception;
        L_0x000c:
            r1 = com.google.android.exoplayer.drm.StreamingDrmSessionManager.this;
            r1 = r1.postResponseHandler;
            r2 = r4.what;
            r0 = r1.obtainMessage(r2, r0);
            r0.sendToTarget();
            return;
        L_0x001a:
            r0 = com.google.android.exoplayer.drm.StreamingDrmSessionManager.this;	 Catch:{ Exception -> 0x000b }
            r1 = r0.callback;	 Catch:{ Exception -> 0x000b }
            r0 = com.google.android.exoplayer.drm.StreamingDrmSessionManager.this;	 Catch:{ Exception -> 0x000b }
            r2 = r0.uuid;	 Catch:{ Exception -> 0x000b }
            r0 = r4.obj;	 Catch:{ Exception -> 0x000b }
            r0 = (android.media.MediaDrm.ProvisionRequest) r0;	 Catch:{ Exception -> 0x000b }
            r0 = r1.executeProvisionRequest(r2, r0);	 Catch:{ Exception -> 0x000b }
            goto L_0x000c;
        L_0x002b:
            r0 = com.google.android.exoplayer.drm.StreamingDrmSessionManager.this;	 Catch:{ Exception -> 0x000b }
            r1 = r0.callback;	 Catch:{ Exception -> 0x000b }
            r0 = com.google.android.exoplayer.drm.StreamingDrmSessionManager.this;	 Catch:{ Exception -> 0x000b }
            r2 = r0.uuid;	 Catch:{ Exception -> 0x000b }
            r0 = r4.obj;	 Catch:{ Exception -> 0x000b }
            r0 = (android.media.MediaDrm.KeyRequest) r0;	 Catch:{ Exception -> 0x000b }
            r0 = r1.executeKeyRequest(r2, r0);	 Catch:{ Exception -> 0x000b }
            goto L_0x000c;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer.drm.StreamingDrmSessionManager.PostRequestHandler.handleMessage(android.os.Message):void");
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* compiled from: Twttr */
    class PostResponseHandler extends Handler {
        public PostResponseHandler(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case StreamingDrmSessionManager.MSG_PROVISION /*0*/:
                    StreamingDrmSessionManager.this.onProvisionResponse(message.obj);
                case StreamingDrmSessionManager.MSG_KEYS /*1*/:
                    StreamingDrmSessionManager.this.onKeyResponse(message.obj);
                default:
            }
        }
    }

    static {
        WIDEVINE_UUID = new UUID(-1301668207276963122L, -6645017420763422227L);
        PLAYREADY_UUID = new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    public static StreamingDrmSessionManager newWidevineInstance(Looper looper, MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap, Handler handler, EventListener eventListener) throws UnsupportedDrmException {
        return new StreamingDrmSessionManager(WIDEVINE_UUID, looper, mediaDrmCallback, hashMap, handler, eventListener);
    }

    public static StreamingDrmSessionManager newPlayReadyInstance(Looper looper, MediaDrmCallback mediaDrmCallback, String str, Handler handler, EventListener eventListener) throws UnsupportedDrmException {
        HashMap hashMap;
        if (TextUtils.isEmpty(str)) {
            hashMap = null;
        } else {
            hashMap = new HashMap();
            hashMap.put(PLAYREADY_CUSTOM_DATA_KEY, str);
        }
        return new StreamingDrmSessionManager(PLAYREADY_UUID, looper, mediaDrmCallback, hashMap, handler, eventListener);
    }

    public StreamingDrmSessionManager(UUID uuid, Looper looper, MediaDrmCallback mediaDrmCallback, HashMap<String, String> hashMap, Handler handler, EventListener eventListener) throws UnsupportedDrmException {
        this.uuid = uuid;
        this.callback = mediaDrmCallback;
        this.optionalKeyRequestParameters = hashMap;
        this.eventHandler = handler;
        this.eventListener = eventListener;
        try {
            this.mediaDrm = new MediaDrm(uuid);
            this.mediaDrm.setOnEventListener(new MediaDrmEventListener());
            this.mediaDrmHandler = new MediaDrmHandler(looper);
            this.postResponseHandler = new PostResponseHandler(looper);
            this.state = MSG_KEYS;
        } catch (Exception e) {
            throw new UnsupportedDrmException(MSG_KEYS, e);
        } catch (Exception e2) {
            throw new UnsupportedDrmException(2, e2);
        }
    }

    public final int getState() {
        return this.state;
    }

    public final MediaCrypto getMediaCrypto() {
        if (this.state == 3 || this.state == 4) {
            return this.mediaCrypto;
        }
        throw new IllegalStateException();
    }

    public boolean requiresSecureDecoderComponent(String str) {
        if (this.state == 3 || this.state == 4) {
            return this.mediaCrypto.requiresSecureDecoderComponent(str);
        }
        throw new IllegalStateException();
    }

    public final Exception getError() {
        return this.state == 0 ? this.lastException : null;
    }

    public final String getPropertyString(String str) {
        return this.mediaDrm.getPropertyString(str);
    }

    public final void setPropertyString(String str, String str2) {
        this.mediaDrm.setPropertyString(str, str2);
    }

    public final byte[] getPropertyByteArray(String str) {
        return this.mediaDrm.getPropertyByteArray(str);
    }

    public final void setPropertyByteArray(String str, byte[] bArr) {
        this.mediaDrm.setPropertyByteArray(str, bArr);
    }

    public void open(DrmInitData drmInitData) {
        int i = this.openCount + MSG_KEYS;
        this.openCount = i;
        if (i == MSG_KEYS) {
            if (this.postRequestHandler == null) {
                this.requestHandlerThread = new HandlerThread("DrmRequestHandler");
                this.requestHandlerThread.start();
                this.postRequestHandler = new PostRequestHandler(this.requestHandlerThread.getLooper());
            }
            if (this.schemeInitData == null) {
                this.schemeInitData = drmInitData.get(this.uuid);
                if (this.schemeInitData == null) {
                    onError(new IllegalStateException("Media does not support uuid: " + this.uuid));
                    return;
                } else if (Util.SDK_INT < 21) {
                    byte[] parseSchemeSpecificData = PsshAtomUtil.parseSchemeSpecificData(this.schemeInitData.data, WIDEVINE_UUID);
                    if (parseSchemeSpecificData != null) {
                        this.schemeInitData = new SchemeInitData(this.schemeInitData.mimeType, parseSchemeSpecificData);
                    }
                }
            }
            this.state = 2;
            openInternal(true);
        }
    }

    public void close() {
        int i = this.openCount - 1;
        this.openCount = i;
        if (i == 0) {
            this.state = MSG_KEYS;
            this.provisioningInProgress = false;
            this.mediaDrmHandler.removeCallbacksAndMessages(null);
            this.postResponseHandler.removeCallbacksAndMessages(null);
            this.postRequestHandler.removeCallbacksAndMessages(null);
            this.postRequestHandler = null;
            this.requestHandlerThread.quit();
            this.requestHandlerThread = null;
            this.schemeInitData = null;
            this.mediaCrypto = null;
            this.lastException = null;
            if (this.sessionId != null) {
                this.mediaDrm.closeSession(this.sessionId);
                this.sessionId = null;
            }
        }
    }

    private void openInternal(boolean z) {
        try {
            this.sessionId = this.mediaDrm.openSession();
            this.mediaCrypto = new MediaCrypto(this.uuid, this.sessionId);
            this.state = 3;
            postKeyRequest();
        } catch (Exception e) {
            if (z) {
                postProvisionRequest();
            } else {
                onError(e);
            }
        } catch (Exception e2) {
            onError(e2);
        }
    }

    private void postProvisionRequest() {
        if (!this.provisioningInProgress) {
            this.provisioningInProgress = true;
            this.postRequestHandler.obtainMessage(MSG_PROVISION, this.mediaDrm.getProvisionRequest()).sendToTarget();
        }
    }

    private void onProvisionResponse(Object obj) {
        this.provisioningInProgress = false;
        if (this.state != 2 && this.state != 3 && this.state != 4) {
            return;
        }
        if (obj instanceof Exception) {
            onError((Exception) obj);
            return;
        }
        try {
            this.mediaDrm.provideProvisionResponse((byte[]) obj);
            if (this.state == 2) {
                openInternal(false);
            } else {
                postKeyRequest();
            }
        } catch (Exception e) {
            onError(e);
        }
    }

    private void postKeyRequest() {
        try {
            this.postRequestHandler.obtainMessage(MSG_KEYS, this.mediaDrm.getKeyRequest(this.sessionId, this.schemeInitData.data, this.schemeInitData.mimeType, MSG_KEYS, this.optionalKeyRequestParameters)).sendToTarget();
        } catch (Exception e) {
            onKeysError(e);
        }
    }

    private void onKeyResponse(Object obj) {
        if (this.state != 3 && this.state != 4) {
            return;
        }
        if (obj instanceof Exception) {
            onKeysError((Exception) obj);
            return;
        }
        try {
            this.mediaDrm.provideKeyResponse(this.sessionId, (byte[]) obj);
            this.state = 4;
            if (this.eventHandler != null && this.eventListener != null) {
                this.eventHandler.post(new Runnable() {
                    public void run() {
                        StreamingDrmSessionManager.this.eventListener.onDrmKeysLoaded();
                    }
                });
            }
        } catch (Exception e) {
            onKeysError(e);
        }
    }

    private void onKeysError(Exception exception) {
        if (exception instanceof NotProvisionedException) {
            postProvisionRequest();
        } else {
            onError(exception);
        }
    }

    private void onError(Exception exception) {
        this.lastException = exception;
        if (!(this.eventHandler == null || this.eventListener == null)) {
            this.eventHandler.post(new AnonymousClass2(exception));
        }
        if (this.state != 4) {
            this.state = MSG_PROVISION;
        }
    }
}
