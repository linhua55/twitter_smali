.class Lcom/crashlytics/android/core/ae;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/ab;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ab;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/crashlytics/android/core/ae;->a:Lcom/crashlytics/android/core/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/crashlytics/android/core/ae;->a:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/ab;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Skipping session finalization because a crash has already occurred."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 460
    :goto_0
    return-object v0

    .line 452
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Finalizing previously open sessions."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/crashlytics/android/core/ae;->a:Lcom/crashlytics/android/core/ab;

    invoke-static {v0}, Lcom/crashlytics/android/core/ab;->f(Lcom/crashlytics/android/core/ab;)Lcom/crashlytics/android/core/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/core/f;->v()Lz;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_1

    .line 455
    iget-object v1, p0, Lcom/crashlytics/android/core/ae;->a:Lcom/crashlytics/android/core/ab;

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/ab;Lz;)V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/ae;->a:Lcom/crashlytics/android/core/ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/ab;Z)V

    .line 458
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Closed all previously open sessions"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/crashlytics/android/core/ae;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
