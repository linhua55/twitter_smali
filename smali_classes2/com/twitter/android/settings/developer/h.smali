.class Lcom/twitter/android/settings/developer/h;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/settings/developer/DebugSettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/settings/developer/DebugSettingsActivity;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/twitter/android/settings/developer/h;->a:Lcom/twitter/android/settings/developer/DebugSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/twitter/android/settings/developer/h;->a:Lcom/twitter/android/settings/developer/DebugSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/developer/DebugSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/settings/developer/q;->b(Landroid/content/Context;)V

    .line 407
    iget-object v0, p0, Lcom/twitter/android/settings/developer/h;->a:Lcom/twitter/android/settings/developer/DebugSettingsActivity;

    invoke-virtual {v0}, Lcom/twitter/android/settings/developer/DebugSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/settings/developer/q;->a(Landroid/content/Context;)Ljava/io/File;

    .line 408
    const/4 v0, 0x0

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
    .line 402
    invoke-virtual {p0}, Lcom/twitter/android/settings/developer/h;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
