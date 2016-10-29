.class Ltv/periscope/android/ui/broadcast/aj;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltv/periscope/android/ui/broadcast/al;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltv/periscope/android/ui/broadcast/al;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field final synthetic f:Ltv/periscope/android/ui/broadcast/ag;

.field private g:Ltv/periscope/android/ui/broadcast/al;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltv/periscope/android/ui/broadcast/ag;)V
    .locals 1

    .prologue
    .line 331
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->b:Ljava/util/Map;

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ag;->a(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/player/PlayMode;

    move-result-object v0

    iget-boolean v0, v0, Ltv/periscope/android/player/PlayMode;->playable:Z

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ag;->b(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/broadcast/bm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    const-string/jumbo v0, "BLCM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Preparing ping, with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/ag;->c(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/chat/y;

    move-result-object v2

    invoke-interface {v2}, Ltv/periscope/android/ui/chat/y;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " hearts given and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/ag;->c(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/chat/y;

    move-result-object v2

    invoke-interface {v2}, Ltv/periscope/android/ui/chat/y;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " comments sent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/util/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/al;->d()V

    .line 373
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/al;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Ltv/periscope/android/ui/broadcast/aj;->b()V

    .line 348
    :cond_0
    iput-object p1, p0, Ltv/periscope/android/ui/broadcast/aj;->d:Ljava/lang/String;

    .line 349
    new-instance v0, Ltv/periscope/android/ui/broadcast/al;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-direct {v0, v1, p1}, Ltv/periscope/android/ui/broadcast/al;-><init>(Ltv/periscope/android/ui/broadcast/ag;Ljava/lang/String;)V

    .line 350
    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    .line 351
    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/al;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->h:Ljava/lang/String;

    .line 352
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/al;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    iput-object p2, v0, Ltv/periscope/android/ui/broadcast/al;->a:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->b:Ljava/util/Map;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method a(Z)V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v0}, Ltv/periscope/android/ui/broadcast/ag;->e(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/broadcast/aj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 379
    :cond_0
    if-eqz p1, :cond_1

    .line 380
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ag;->d(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/api/ApiManager;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/ag;->e(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/broadcast/aj;

    move-result-object v2

    iget-object v2, v2, Ltv/periscope/android/ui/broadcast/aj;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ltv/periscope/android/api/ApiManager;->getAccessChat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcast/ag;->a(Ltv/periscope/android/ui/broadcast/ag;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v1}, Ltv/periscope/android/ui/broadcast/ag;->d(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/api/ApiManager;

    move-result-object v1

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/aj;->f:Ltv/periscope/android/ui/broadcast/ag;

    invoke-static {v2}, Ltv/periscope/android/ui/broadcast/ag;->e(Ltv/periscope/android/ui/broadcast/ag;)Ltv/periscope/android/ui/broadcast/aj;

    move-result-object v2

    iget-object v2, v2, Ltv/periscope/android/ui/broadcast/aj;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Ltv/periscope/android/api/ApiManager;->getAccessChatNoRetry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltv/periscope/android/ui/broadcast/ag;->a(Ltv/periscope/android/ui/broadcast/ag;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/al;->a()Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/aj;->c:Ljava/util/Map;

    iget-object v2, p0, Ltv/periscope/android/ui/broadcast/aj;->g:Ltv/periscope/android/ui/broadcast/al;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_0
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/al;

    .line 395
    if-eqz v0, :cond_0

    .line 396
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltv/periscope/android/ui/broadcast/al;->a(Z)V

    .line 397
    iget-object v1, p0, Ltv/periscope/android/ui/broadcast/aj;->b:Ljava/util/Map;

    iget-object v0, v0, Ltv/periscope/android/ui/broadcast/al;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    const-string/jumbo v0, " [ mSessions: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object v0, p0, Ltv/periscope/android/ui/broadcast/aj;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    const-string/jumbo v3, " { "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltv/periscope/android/ui/broadcast/aj;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/al;

    invoke-virtual {v0}, Ltv/periscope/android/ui/broadcast/al;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "}. \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 408
    :cond_0
    const-string/jumbo v0, " ]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
