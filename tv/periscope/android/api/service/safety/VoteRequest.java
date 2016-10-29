package tv.periscope.android.api.service.safety;

import defpackage.op;
import tv.periscope.android.api.PsRequest;
import tv.periscope.model.chat.MessageType.VoteType;

/* compiled from: Twttr */
public class VoteRequest extends PsRequest {
    public static final String EXTRA_VOTE_REQUEST = "tv.periscope.android.api.service.safety.EXTRA_VOTE_REQUEST";
    @op(a = "message_uuid")
    public String messageUUID;
    @op(a = "vote_type")
    public int vote;

    public VoteRequest(String str, VoteType voteType) {
        this.messageUUID = str;
        this.vote = voteType.value;
    }
}
