.class Lafy;
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
        "Lcom/twitter/library/client/Session;",
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
    .line 173
    iput-object p1, p0, Lafy;->b:Lafw;

    iput-object p2, p0, Lafy;->a:Lagd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iget-object v0, p0, Lafy;->a:Lagd;

    invoke-static {v0}, Lagd;->a(Lagd;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lafy;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/client/Session;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lafy;->c:Lcom/twitter/app/common/app/n;

    .line 179
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->k()Lcom/twitter/library/client/Session;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 178
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lafy;->a()Lcom/twitter/library/client/Session;

    move-result-object v0

    return-object v0
.end method
