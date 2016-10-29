.class Lcom/twitter/android/client/tweetuploadmanager/g;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/twitter/model/drafts/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;

.field private final c:J

.field private final d:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;J)V
    .locals 3

    .prologue
    .line 1159
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1160
    iput-object p1, p0, Lcom/twitter/android/client/tweetuploadmanager/g;->a:Landroid/content/Context;

    .line 1161
    iput-object p2, p0, Lcom/twitter/android/client/tweetuploadmanager/g;->b:Lcom/twitter/library/client/Session;

    .line 1162
    invoke-virtual {p2}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/client/tweetuploadmanager/g;->c:J

    .line 1163
    iput-wide p3, p0, Lcom/twitter/android/client/tweetuploadmanager/g;->d:J

    .line 1164
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/twitter/model/drafts/d;
    .locals 4

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/twitter/android/client/tweetuploadmanager/g;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/twitter/android/client/tweetuploadmanager/g;->c:J

    .line 1169
    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/s;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/s;

    move-result-object v0

    .line 1170
    iget-wide v2, p0, Lcom/twitter/android/client/tweetuploadmanager/g;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/library/provider/s;->a(J)Lcom/twitter/model/drafts/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/model/drafts/d;)V
    .locals 7

    .prologue
    .line 1175
    if-eqz p1, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/twitter/android/client/tweetuploadmanager/g;->a:Landroid/content/Context;

    .line 1177
    invoke-static {v0}, Lcom/twitter/android/client/y;->a(Landroid/content/Context;)Lcom/twitter/android/client/y;

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lcom/twitter/android/client/tweetuploadmanager/g;->b:Lcom/twitter/library/client/Session;

    iget-wide v2, p1, Lcom/twitter/model/drafts/d;->b:J

    iget-object v4, p1, Lcom/twitter/model/drafts/d;->c:Ljava/lang/String;

    const v5, 0x7f0a0683

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/y;->a(Lcom/twitter/library/client/Session;JLjava/lang/String;IZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1185
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1151
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/tweetuploadmanager/g;->a([Ljava/lang/Void;)Lcom/twitter/model/drafts/d;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1151
    check-cast p1, Lcom/twitter/model/drafts/d;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/tweetuploadmanager/g;->a(Lcom/twitter/model/drafts/d;)V

    return-void
.end method
