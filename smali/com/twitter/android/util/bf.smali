.class public Lcom/twitter/android/util/bf;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static a:Lcom/twitter/android/util/be;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/util/be;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lcom/twitter/android/util/bf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/twitter/android/util/bf;->a:Lcom/twitter/android/util/be;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/twitter/android/util/bg;

    invoke-direct {v0, p0}, Lcom/twitter/android/util/bg;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/twitter/android/util/bf;->a:Lcom/twitter/android/util/be;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
