package tv.periscope.android.api;

import defpackage.op;
import java.util.Arrays;
import tv.periscope.model.u;

/* compiled from: Twttr */
public class AccessChatResponse extends PsResponse {
    @op(a = "access_token")
    public String accessToken;
    @op(a = "auth_token")
    public String authToken;
    @op(a = "channel")
    public String channel;
    @op(a = "chan_perms")
    public ChannelPermissions channelPerms;
    @op(a = "endpoint")
    public String endpoint;
    @op(a = "key")
    public byte[] key;
    @op(a = "life_cycle_token")
    public String lifeCycleToken;
    @op(a = "participant_index")
    public int participantIndex;
    @op(a = "publisher")
    public String publisher;
    @op(a = "room_id")
    public String roomId;
    @op(a = "should_log")
    public boolean shouldLog;
    @op(a = "should_verify_signature")
    public boolean shouldVerifySignature;
    @op(a = "signer_key")
    public String signerKey;
    @op(a = "signer_token")
    public String signerToken;
    @op(a = "subscriber")
    public String subscriber;

    public u create() {
        int i = 0;
        if (this.channelPerms != null) {
            i = this.channelPerms.chatmanOpts;
        }
        return u.a(this.participantIndex, this.roomId, this.lifeCycleToken, this.shouldLog, this.accessToken, this.endpoint, i);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r5) {
        /*
        r4 = this;
        r0 = 1;
        r1 = 0;
        if (r4 != r5) goto L_0x0006;
    L_0x0004:
        r1 = r0;
    L_0x0005:
        return r1;
    L_0x0006:
        if (r5 == 0) goto L_0x0005;
    L_0x0008:
        r2 = r4.getClass();
        r3 = r5.getClass();
        if (r2 != r3) goto L_0x0005;
    L_0x0012:
        r5 = (tv.periscope.android.api.AccessChatResponse) r5;
        r2 = r4.participantIndex;
        r3 = r5.participantIndex;
        if (r2 != r3) goto L_0x0005;
    L_0x001a:
        r2 = r4.shouldLog;
        r3 = r5.shouldLog;
        if (r2 != r3) goto L_0x0005;
    L_0x0020:
        r2 = r4.shouldVerifySignature;
        r3 = r5.shouldVerifySignature;
        if (r2 != r3) goto L_0x0005;
    L_0x0026:
        r2 = r4.subscriber;
        if (r2 == 0) goto L_0x00ce;
    L_0x002a:
        r2 = r4.subscriber;
        r3 = r5.subscriber;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x0034:
        r2 = r4.publisher;
        if (r2 == 0) goto L_0x00d4;
    L_0x0038:
        r2 = r4.publisher;
        r3 = r5.publisher;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x0042:
        r2 = r4.authToken;
        if (r2 == 0) goto L_0x00da;
    L_0x0046:
        r2 = r4.authToken;
        r3 = r5.authToken;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x0050:
        r2 = r4.channel;
        if (r2 == 0) goto L_0x00e0;
    L_0x0054:
        r2 = r4.channel;
        r3 = r5.channel;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x005e:
        r2 = r4.roomId;
        if (r2 == 0) goto L_0x00e6;
    L_0x0062:
        r2 = r4.roomId;
        r3 = r5.roomId;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x006c:
        r2 = r4.lifeCycleToken;
        if (r2 == 0) goto L_0x00ec;
    L_0x0070:
        r2 = r4.lifeCycleToken;
        r3 = r5.lifeCycleToken;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x007a:
        r2 = r4.signerToken;
        if (r2 == 0) goto L_0x00f2;
    L_0x007e:
        r2 = r4.signerToken;
        r3 = r5.signerToken;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x0088:
        r2 = r4.signerKey;
        if (r2 == 0) goto L_0x00f8;
    L_0x008c:
        r2 = r4.signerKey;
        r3 = r5.signerKey;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x0096:
        r2 = r4.accessToken;
        if (r2 == 0) goto L_0x00fe;
    L_0x009a:
        r2 = r4.accessToken;
        r3 = r5.accessToken;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x00a4:
        r2 = r4.key;
        r3 = r5.key;
        r2 = java.util.Arrays.equals(r2, r3);
        if (r2 == 0) goto L_0x0005;
    L_0x00ae:
        r2 = r4.endpoint;
        if (r2 == 0) goto L_0x0104;
    L_0x00b2:
        r2 = r4.endpoint;
        r3 = r5.endpoint;
        r2 = r2.equals(r3);
        if (r2 == 0) goto L_0x0005;
    L_0x00bc:
        r2 = r4.channelPerms;
        if (r2 == 0) goto L_0x010a;
    L_0x00c0:
        r2 = r4.channelPerms;
        r3 = r5.channelPerms;
        r2 = r2.equals(r3);
        if (r2 != 0) goto L_0x00cb;
    L_0x00ca:
        r0 = r1;
    L_0x00cb:
        r1 = r0;
        goto L_0x0005;
    L_0x00ce:
        r2 = r5.subscriber;
        if (r2 == 0) goto L_0x0034;
    L_0x00d2:
        goto L_0x0005;
    L_0x00d4:
        r2 = r5.publisher;
        if (r2 == 0) goto L_0x0042;
    L_0x00d8:
        goto L_0x0005;
    L_0x00da:
        r2 = r5.authToken;
        if (r2 == 0) goto L_0x0050;
    L_0x00de:
        goto L_0x0005;
    L_0x00e0:
        r2 = r5.channel;
        if (r2 == 0) goto L_0x005e;
    L_0x00e4:
        goto L_0x0005;
    L_0x00e6:
        r2 = r5.roomId;
        if (r2 == 0) goto L_0x006c;
    L_0x00ea:
        goto L_0x0005;
    L_0x00ec:
        r2 = r5.lifeCycleToken;
        if (r2 == 0) goto L_0x007a;
    L_0x00f0:
        goto L_0x0005;
    L_0x00f2:
        r2 = r5.signerToken;
        if (r2 == 0) goto L_0x0088;
    L_0x00f6:
        goto L_0x0005;
    L_0x00f8:
        r2 = r5.signerKey;
        if (r2 == 0) goto L_0x0096;
    L_0x00fc:
        goto L_0x0005;
    L_0x00fe:
        r2 = r5.accessToken;
        if (r2 == 0) goto L_0x00a4;
    L_0x0102:
        goto L_0x0005;
    L_0x0104:
        r2 = r5.endpoint;
        if (r2 == 0) goto L_0x00bc;
    L_0x0108:
        goto L_0x0005;
    L_0x010a:
        r2 = r5.channelPerms;
        if (r2 != 0) goto L_0x00ca;
    L_0x010e:
        goto L_0x00cb;
        */
        throw new UnsupportedOperationException("Method not decompiled: tv.periscope.android.api.AccessChatResponse.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int hashCode;
        int i = 1;
        int i2 = 0;
        int hashCode2 = (this.subscriber != null ? this.subscriber.hashCode() : 0) * 31;
        if (this.publisher != null) {
            hashCode = this.publisher.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.authToken != null) {
            hashCode = this.authToken.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (((hashCode + hashCode2) * 31) + this.participantIndex) * 31;
        if (this.channel != null) {
            hashCode = this.channel.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.roomId != null) {
            hashCode = this.roomId.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.lifeCycleToken != null) {
            hashCode = this.lifeCycleToken.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.signerToken != null) {
            hashCode = this.signerToken.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.signerKey != null) {
            hashCode = this.signerKey.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode2 = (hashCode + hashCode2) * 31;
        if (this.shouldLog) {
            hashCode = 1;
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + hashCode2) * 31;
        if (!this.shouldVerifySignature) {
            i = 0;
        }
        i = (hashCode + i) * 31;
        if (this.accessToken != null) {
            hashCode = this.accessToken.hashCode();
        } else {
            hashCode = 0;
        }
        i = (hashCode + i) * 31;
        if (this.key != null) {
            hashCode = Arrays.hashCode(this.key);
        } else {
            hashCode = 0;
        }
        i = (hashCode + i) * 31;
        if (this.endpoint != null) {
            hashCode = this.endpoint.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode = (hashCode + i) * 31;
        if (this.channelPerms != null) {
            i2 = this.channelPerms.hashCode();
        }
        return hashCode + i2;
    }
}
