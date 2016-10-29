.class Ltv/periscope/android/ui/broadcast/al;
.super Ljava/lang/Object;
.source "Twttr"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Ltv/periscope/android/ui/broadcast/ag;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/ag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Ltv/periscope/android/ui/broadcast/al;->c:Ljava/lang/String;

    .line 267
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 271
    sget-object v1, Ltv/periscope/android/ui/broadcast/ah;->a:[I

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/ag;->a(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/player/PlayMode;

    move-result-object v2

    invoke-virtual {v2}, Ltv/periscope/android/player/PlayMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 284
    :goto_0
    return-object v0

    .line 276
    :pswitch_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ag;->b(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/broadcast/bm;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ag;->b(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/broadcast/bm;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bm;->l()Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_0
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ag;->d(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/api/ApiManager;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/al;->a:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v3}, Ltv/periscope/android/ui/broadcast/ag;->c(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/chat/y;

    move-result-object v3

    invoke-interface {v3}, Ltv/periscope/android/ui/chat/y;->b()I

    move-result v3

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v4}, Ltv/periscope/android/ui/broadcast/ag;->c(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/chat/y;

    move-result-object v4

    invoke-interface {v4}, Ltv/periscope/android/ui/chat/y;->c()I

    move-result v4

    invoke-interface {v1, v2, v0, v3, v4}, Ltv/periscope/android/api/ApiManager;->endWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 292
    iput-boolean p1, p0, Ltv/periscope/android/ui/broadcast/al;->d:Z

    .line 293
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Ltv/periscope/android/ui/broadcast/al;->d:Z

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    sget-object v0, Ltv/periscope/android/ui/broadcast/ah;->a:[I

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ag;->a(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/player/PlayMode;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/android/player/PlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 304
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 301
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ag;->d(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/api/ApiManager;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/al;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ltv/periscope/android/api/ApiManager;->startWatching(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method d()V
    .locals 5

    .prologue
    .line 308
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/al;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    sget-object v0, Ltv/periscope/android/ui/broadcast/ah;->a:[I

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ag;->a(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/player/PlayMode;

    move-result-object v1

    invoke-virtual {v1}, Ltv/periscope/android/player/PlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ag;->b(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/broadcast/bm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ag;->b(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/broadcast/bm;

    move-result-object v0

    invoke-interface {v0}, Ltv/periscope/android/ui/broadcast/bm;->l()Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_1
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ag;->d(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/api/ApiManager;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/al;->a:Ljava/lang/String;

    iget-object v3, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v3}, Ltv/periscope/android/ui/broadcast/ag;->c(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/chat/y;

    move-result-object v3

    invoke-interface {v3}, Ltv/periscope/android/ui/chat/y;->b()I

    move-result v3

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/al;->b:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v4}, Ltv/periscope/android/ui/broadcast/ag;->c(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/chat/y;

    move-result-object v4

    invoke-interface {v4}, Ltv/periscope/android/ui/chat/y;->c()I

    move-result v4

    invoke-interface {v1, v2, v0, v3, v4}, Ltv/periscope/android/api/ApiManager;->pingWatching(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    goto :goto_0

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mLifecycleToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/al;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/al;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
