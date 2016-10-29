package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase.RemoteInput;

/* compiled from: Twttr */
public class NotificationCompatBase {

    /* compiled from: Twttr */
    public abstract class Action {

        /* compiled from: Twttr */
        public interface Factory {
            Action build(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr);

            Action[] newArray(int i);
        }

        public abstract PendingIntent getActionIntent();

        public abstract Bundle getExtras();

        public abstract int getIcon();

        public abstract RemoteInput[] getRemoteInputs();

        public abstract CharSequence getTitle();
    }

    /* compiled from: Twttr */
    public abstract class UnreadConversation {

        /* compiled from: Twttr */
        public interface Factory {
            UnreadConversation build(String[] strArr, RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j);
        }

        abstract long getLatestTimestamp();

        abstract String[] getMessages();

        abstract String getParticipant();

        abstract String[] getParticipants();

        abstract PendingIntent getReadPendingIntent();

        abstract RemoteInput getRemoteInput();

        abstract PendingIntent getReplyPendingIntent();
    }

    public static Notification add(Notification notification, Context context, CharSequence charSequence, CharSequence charSequence2, PendingIntent pendingIntent) {
        notification.setLatestEventInfo(context, charSequence, charSequence2, pendingIntent);
        return notification;
    }
}
