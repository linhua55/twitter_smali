package com.twitter.model.livepipeline;

/* compiled from: Twttr */
public enum PipelineEventType {
    NO_TYPE("no_type", null),
    CONFIG("config", b.class),
    SUBSCRIPTION("subscriptions", i.class),
    TYPING_INDICATOR("dm_typing", k.class),
    DM_UPDATE("dm_update", d.class);
    
    public final Class<? extends f> builder;
    public final String canonicalName;

    private PipelineEventType(String str, Class<? extends f> cls) {
        this.canonicalName = str;
        this.builder = cls;
    }

    public String a(String str) {
        return "/" + this.canonicalName + "/" + str;
    }

    public String toString() {
        return this.canonicalName;
    }

    public static PipelineEventType b(String str) {
        for (PipelineEventType pipelineEventType : values()) {
            if (pipelineEventType.toString().equals(str)) {
                return pipelineEventType;
            }
        }
        return NO_TYPE;
    }
}
