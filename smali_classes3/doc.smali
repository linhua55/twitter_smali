.class public abstract Ldoc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final START_TIME_UNDEFINED:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "RetryRunnable"


# instance fields
.field private final mDeadline:J

.field private mNumRetries:I

.field private mRetryBackoff:J

.field private mStartTime:J


# direct methods
.method protected constructor <init>(J)V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldoc;->mStartTime:J

    .line 68
    iput-wide p1, p0, Ldoc;->mDeadline:J

    .line 69
    return-void
.end method


# virtual methods
.method protected abstract canRetry(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)Z"
        }
    .end annotation
.end method

.method public currentBackoff()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Ldoc;->mRetryBackoff:J

    return-wide v0
.end method

.method protected abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method protected abstract finish(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method protected getRandomJitter()J
    .locals 2

    .prologue
    .line 100
    iget v0, p0, Ldoc;->mNumRetries:I

    invoke-static {v0}, Ldmf;->a(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract id()Ljava/lang/String;
.end method

.method protected abstract noRetriesLeft(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public numRetries()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Ldoc;->mNumRetries:I

    return v0
.end method

.method protected abstract retry(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public run()V
    .locals 6

    .prologue
    .line 73
    iget-wide v0, p0, Ldoc;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldoc;->mStartTime:J

    .line 76
    :cond_0
    invoke-virtual {p0}, Ldoc;->execute()Ljava/lang/Object;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Ldoc;->canRetry(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Ldoc;->mStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Ldoc;->mDeadline:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 79
    invoke-virtual {p0, v0}, Ldoc;->noRetriesLeft(Ljava/lang/Object;)V

    .line 80
    const-string/jumbo v0, "RetryRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldoc;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": No retries left due to exceeded deadline."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_1
    iget v1, p0, Ldoc;->mNumRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ldoc;->mNumRetries:I

    .line 84
    invoke-virtual {p0}, Ldoc;->getRandomJitter()J

    move-result-wide v2

    iput-wide v2, p0, Ldoc;->mRetryBackoff:J

    .line 85
    invoke-virtual {p0, v0}, Ldoc;->retry(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0, v0}, Ldoc;->finish(Ljava/lang/Object;)V

    goto :goto_0
.end method
