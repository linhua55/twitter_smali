.class Lcom/twitter/android/settings/developer/f;
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/developer/DebugSettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/developer/DebugSettingsActivity;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/twitter/android/settings/developer/f;->a:Lcom/twitter/android/settings/developer/DebugSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/twitter/android/settings/developer/f;->a:Lcom/twitter/android/settings/developer/DebugSettingsActivity;

    invoke-static {v0}, Lczi;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 374
    if-nez v0, :cond_0

    .line 375
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Couldn\'t generate thread dump"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/twitter/android/settings/developer/f;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
