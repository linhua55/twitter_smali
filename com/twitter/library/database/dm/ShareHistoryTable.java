package com.twitter.library.database.dm;

import com.google.android.exoplayer.chunk.FormatEvaluator.AdaptiveEvaluator;

/* compiled from: Twttr */
public class ShareHistoryTable {

    /* compiled from: Twttr */
    public enum Type {
        TWEET_SHARED(0),
        TWEET_SHARED_INDIRECTLY(10),
        MESSAGE_SENT(20),
        NONE(AdaptiveEvaluator.DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS);
        
        private final int mValue;

        private Type(int i) {
            this.mValue = i;
        }

        public int a() {
            return this.mValue;
        }

        public static Type a(int i) {
            if (i == TWEET_SHARED.a()) {
                return TWEET_SHARED;
            }
            if (i == TWEET_SHARED_INDIRECTLY.a()) {
                return TWEET_SHARED_INDIRECTLY;
            }
            return MESSAGE_SENT;
        }
    }

    public static String a() {
        return "CREATE TABLE share_history (reference_id TEXT NOT NULL,is_conversation INT NOT NULL,type INT NOT NULL,event_id BIGINT NOT NULL,tweet_id BIGINT,UNIQUE (reference_id,event_id) ON CONFLICT REPLACE);";
    }
}
