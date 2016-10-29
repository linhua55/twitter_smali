.class Lafk;
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
        "Lcom/twitter/library/provider/dm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lafm;

.field final synthetic b:Laff;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Laff;Lafm;)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lafk;->b:Laff;

    iput-object p2, p0, Lafk;->a:Lafm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iget-object v0, p0, Lafk;->a:Lafm;

    invoke-static {v0}, Lafm;->a(Lafm;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lafk;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/library/provider/dm;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lafk;->c:Lcom/twitter/app/common/app/n;

    .line 217
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->r()Lcom/twitter/library/provider/dm;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 216
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/provider/dm;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lafk;->a()Lcom/twitter/library/provider/dm;

    move-result-object v0

    return-object v0
.end method
