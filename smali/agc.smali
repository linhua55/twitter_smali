.class Lagc;
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
.field final synthetic a:Lagd;

.field final synthetic b:Lafw;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Lafw;Lagd;)V
    .locals 1

    .prologue
    .line 269
    iput-object p1, p0, Lagc;->b:Lafw;

    iput-object p2, p0, Lagc;->a:Lagd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iget-object v0, p0, Lagc;->a:Lagd;

    invoke-static {v0}, Lagd;->a(Lagd;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lagc;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lbbq;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lagc;->c:Lcom/twitter/app/common/app/n;

    .line 275
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->u()Lbbq;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 274
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbq;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lagc;->a()Lbbq;

    move-result-object v0

    return-object v0
.end method
