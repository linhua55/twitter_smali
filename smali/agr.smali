.class Lagr;
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
.field final synthetic a:Lagu;

.field final synthetic b:Lagn;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Lagn;Lagu;)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lagr;->b:Lagn;

    iput-object p2, p0, Lagr;->a:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iget-object v0, p0, Lagr;->a:Lagu;

    invoke-static {v0}, Lagu;->a(Lagu;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lagr;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/app/common/account/UserIdentifier;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lagr;->c:Lcom/twitter/app/common/app/n;

    .line 217
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->a()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 216
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/account/UserIdentifier;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lagr;->a()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v0

    return-object v0
.end method
