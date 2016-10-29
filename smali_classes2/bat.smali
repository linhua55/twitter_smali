.class public Lbat;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Lcom/twitter/database/model/j",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/database/model/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/model/q",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/twitter/android/bt;

.field private c:Lcom/twitter/database/model/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/database/model/j",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lbav;)V
    .locals 7

    .prologue
    .line 52
    invoke-static {p1}, Lbav;->a(Lbav;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbat;->d:Z

    .line 53
    invoke-static {p1}, Lbav;->b(Lbav;)Lcom/twitter/database/model/q;

    move-result-object v0

    iput-object v0, p0, Lbat;->a:Lcom/twitter/database/model/q;

    .line 54
    new-instance v0, Lcom/twitter/android/bt;

    .line 55
    invoke-static {p1}, Lbav;->a(Lbav;)Landroid/content/Context;

    move-result-object v1

    .line 56
    invoke-static {p1}, Lbav;->c(Lbav;)Landroid/net/Uri;

    move-result-object v2

    .line 57
    invoke-static {p1}, Lbav;->d(Lbav;)[Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-static {p1}, Lbav;->e(Lbav;)Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {p1}, Lbav;->f(Lbav;)[Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-static {p1}, Lbav;->g(Lbav;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/bt;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lbat;->b:Lcom/twitter/android/bt;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lbav;Lbau;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lbat;-><init>(Lbav;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/database/model/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/model/j",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lbat;->b:Lcom/twitter/android/bt;

    invoke-virtual {v0}, Lcom/twitter/android/bt;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lbat;->a:Lcom/twitter/database/model/q;

    invoke-static {v0, v1}, Lcmz;->a(Landroid/database/Cursor;Lcom/twitter/database/model/q;)Lcom/twitter/database/model/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/twitter/database/model/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbat;->e:Z

    .line 79
    invoke-virtual {p0}, Lbat;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/twitter/database/model/j;->close()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lbat;->c:Lcom/twitter/database/model/j;

    .line 87
    iput-object p1, p0, Lbat;->c:Lcom/twitter/database/model/j;

    .line 89
    invoke-virtual {p0}, Lbat;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 93
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/twitter/database/model/j;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/twitter/database/model/j;->close()V

    goto :goto_0
.end method

.method public b(Lcom/twitter/database/model/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/database/model/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/database/model/j;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/twitter/database/model/j;->close()V

    .line 165
    :cond_0
    return-void
.end method

.method public cancelLoadInBackground()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lbat;->b:Lcom/twitter/android/bt;

    invoke-virtual {v0}, Lcom/twitter/android/bt;->cancelLoadInBackground()V

    .line 73
    return-void
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/twitter/database/model/j;

    invoke-virtual {p0, p1}, Lbat;->a(Lcom/twitter/database/model/j;)V

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lbat;->a()Lcom/twitter/database/model/j;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelLoad()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbat;->e:Z

    .line 131
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/twitter/database/model/j;

    invoke-virtual {p0, p1}, Lbat;->b(Lcom/twitter/database/model/j;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lbat;->d:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onContentChanged()V

    .line 120
    :cond_0
    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onForceLoad()V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbat;->e:Z

    .line 126
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 172
    invoke-virtual {p0}, Lbat;->onStopLoading()V

    .line 174
    iget-object v0, p0, Lbat;->c:Lcom/twitter/database/model/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbat;->c:Lcom/twitter/database/model/j;

    invoke-virtual {v0}, Lcom/twitter/database/model/j;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lbat;->c:Lcom/twitter/database/model/j;

    invoke-virtual {v0}, Lcom/twitter/database/model/j;->close()V

    .line 177
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbat;->c:Lcom/twitter/database/model/j;

    .line 178
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbat;->c:Lcom/twitter/database/model/j;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lbat;->c:Lcom/twitter/database/model/j;

    invoke-virtual {p0, v0}, Lbat;->a(Lcom/twitter/database/model/j;)V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lbat;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbat;->c:Lcom/twitter/database/model/j;

    if-nez v0, :cond_2

    .line 147
    :cond_1
    invoke-virtual {p0}, Lbat;->forceLoad()V

    .line 149
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lbat;->cancelLoad()Z

    .line 158
    return-void
.end method
