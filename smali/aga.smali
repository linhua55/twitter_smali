.class Laga;
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
        "Lcom/twitter/app/common/account/UserIdentifier;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lagd;

.field final synthetic b:Lafw;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Lafw;Lagd;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Laga;->b:Lafw;

    iput-object p2, p0, Laga;->a:Lagd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iget-object v0, p0, Laga;->a:Lagd;

    invoke-static {v0}, Lagd;->a(Lagd;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Laga;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/account/UserIdentifier;
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Laga;->c:Lcom/twitter/app/common/app/n;

    .line 216
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->a()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 215
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/UserIdentifier;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Laga;->a()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    return-object v0
.end method
