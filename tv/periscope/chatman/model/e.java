package tv.periscope.chatman.model;

import tv.periscope.model.chat.MessageType.SentenceType;

/* compiled from: Twttr */
final class e extends p {
    private SentenceType a;
    private Integer b;

    e() {
    }

    public p a(SentenceType sentenceType) {
        this.a = sentenceType;
        return this;
    }

    public p a(int i) {
        this.b = Integer.valueOf(i);
        return this;
    }

    public Ban a() {
        String str = "";
        if (this.a == null) {
            str = str + " sentenceType";
        }
        if (this.b == null) {
            str = str + " duration";
        }
        if (str.isEmpty()) {
            return new c(this.b.intValue(), null);
        }
        throw new IllegalStateException("Missing required properties:" + str);
    }
}
