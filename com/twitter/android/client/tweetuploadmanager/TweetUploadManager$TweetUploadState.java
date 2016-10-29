package com.twitter.android.client.tweetuploadmanager;

import com.twitter.android.nativecards.pollcompose.ae;
import wb;
import wc;
import wf;
import wi;
import wk;
import wq;
import ws;

/* compiled from: Twttr */
enum TweetUploadManager$TweetUploadState {
    RemoteMediaDownload {
        public wb a() {
            return new wq();
        }

        public boolean a(c cVar) throws TweetUploadException {
            return wq.b(cVar);
        }

        public boolean b(c cVar) throws TweetUploadException {
            return wq.c(cVar);
        }
    },
    MediaPreparation {
        public wb a() {
            return new wi();
        }

        public boolean a(c cVar) throws TweetUploadException {
            return wi.b(cVar);
        }

        public boolean b(c cVar) throws TweetUploadException {
            return wi.c(cVar);
        }
    },
    MediaUpload {
        public wb a() {
            return new wk();
        }

        public boolean a(c cVar) throws TweetUploadException {
            return wk.b(cVar);
        }

        public boolean b(c cVar) throws TweetUploadException {
            return wk.c(cVar);
        }
    },
    MediaMetadataUpload {
        public wb a() {
            return new wc();
        }

        public boolean a(c cVar) throws TweetUploadException {
            return wc.b(cVar);
        }

        public boolean b(c cVar) throws TweetUploadException {
            return wc.c(cVar);
        }
    },
    PollUpload {
        public wb a() {
            return new ae();
        }

        public boolean a(c cVar) throws TweetUploadException {
            return ae.b(cVar);
        }

        public boolean b(c cVar) throws TweetUploadException {
            return ae.c(cVar);
        }
    },
    PostTweet {
        public wb a() {
            return new ws();
        }

        public boolean a(c cVar) throws TweetUploadException {
            return ws.b(cVar);
        }

        public boolean b(c cVar) throws TweetUploadException {
            return ws.c(cVar);
        }
    },
    MediaMonetizationMetadataUpload {
        public wb a() {
            return new wf();
        }

        public boolean a(c cVar) throws TweetUploadException {
            return wf.b(cVar);
        }

        public boolean b(c cVar) throws TweetUploadException {
            return wf.c(cVar);
        }
    };

    public abstract wb a();

    public abstract boolean a(c cVar) throws TweetUploadException;

    public abstract boolean b(c cVar) throws TweetUploadException;
}
