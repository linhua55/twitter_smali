.class Lagt;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Landroid/support/v4/content/LocalBroadcastManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lagu;

.field final synthetic b:Lagn;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Lagn;Lagu;)V
    .locals 1

    .prologue
    .line 251
    iput-object p1, p0, Lagt;->b:Lagn;

    iput-object p2, p0, Lagt;->a:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iget-object v0, p0, Lagt;->a:Lagu;

    invoke-static {v0}, Lagu;->a(Lagu;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lagt;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/content/LocalBroadcastManager;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lagt;->c:Lcom/twitter/app/common/app/n;

    .line 257
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->j()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 256
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lagt;->a()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    return-object v0
.end method
