.class Lags;
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
        "Lbbq;",
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
    .line 230
    iput-object p1, p0, Lags;->b:Lagn;

    iput-object p2, p0, Lags;->a:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iget-object v0, p0, Lags;->a:Lagu;

    invoke-static {v0}, Lagu;->a(Lagu;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lags;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lbbq;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lags;->c:Lcom/twitter/app/common/app/n;

    .line 236
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->u()Lbbq;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 235
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbq;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lags;->a()Lbbq;

    move-result-object v0

    return-object v0
.end method
