.class Lcom/twitter/app/drafts/e;
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
        "Lcom/twitter/library/client/bk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/app/drafts/f;

.field final synthetic b:Lcom/twitter/app/drafts/c;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Lcom/twitter/app/drafts/c;Lcom/twitter/app/drafts/f;)V
    .locals 1

    .prologue
    .line 98
    iput-object p1, p0, Lcom/twitter/app/drafts/e;->b:Lcom/twitter/app/drafts/c;

    iput-object p2, p0, Lcom/twitter/app/drafts/e;->a:Lcom/twitter/app/drafts/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/twitter/app/drafts/e;->a:Lcom/twitter/app/drafts/f;

    invoke-static {v0}, Lcom/twitter/app/drafts/f;->a(Lcom/twitter/app/drafts/f;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/app/drafts/e;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/client/bk;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/twitter/app/drafts/e;->c:Lcom/twitter/app/common/app/n;

    .line 104
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->p()Lcom/twitter/library/client/bk;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 103
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/client/bk;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/twitter/app/drafts/e;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    return-object v0
.end method
