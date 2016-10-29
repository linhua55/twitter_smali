.class Lcom/twitter/android/client/u;
.super Landroid/os/AsyncTask;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/client/t;

.field private final b:Lcom/twitter/android/HomeTimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/t;Lcom/twitter/android/HomeTimelineFragment;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/twitter/android/client/u;->a:Lcom/twitter/android/client/t;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/twitter/android/client/u;->b:Lcom/twitter/android/HomeTimelineFragment;

    .line 287
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 291
    iget-object v1, p0, Lcom/twitter/android/client/u;->a:Lcom/twitter/android/client/t;

    .line 292
    invoke-static {v1}, Lcom/twitter/android/client/t;->a(Lcom/twitter/android/client/t;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/client/u;->a:Lcom/twitter/android/client/t;

    invoke-static {v2}, Lcom/twitter/android/client/t;->b(Lcom/twitter/android/client/t;)Lcom/twitter/model/core/TwitterUser;

    move-result-object v2

    iget-wide v2, v2, Lcom/twitter/model/core/TwitterUser;->c:J

    invoke-static {v1, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lcom/twitter/library/provider/dm;->k()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 298
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/twitter/android/client/u;->b:Lcom/twitter/android/HomeTimelineFragment;

    invoke-virtual {v0}, Lcom/twitter/android/HomeTimelineFragment;->M()V

    .line 300
    iget-object v0, p0, Lcom/twitter/android/client/u;->a:Lcom/twitter/android/client/t;

    invoke-static {v0}, Lcom/twitter/android/client/t;->c(Lcom/twitter/android/client/t;)V

    .line 302
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/u;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 281
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/twitter/android/client/u;->a(Ljava/lang/Boolean;)V

    return-void
.end method
