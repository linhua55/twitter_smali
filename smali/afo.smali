.class Lafo;
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
.field final synthetic a:Lafp;

.field final synthetic b:Lafn;

.field private final c:Lcom/twitter/app/common/app/n;


# direct methods
.method constructor <init>(Lafn;Lafp;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lafo;->b:Lafn;

    iput-object p2, p0, Lafo;->a:Lafp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget-object v0, p0, Lafo;->a:Lafp;

    invoke-static {v0}, Lafp;->a(Lafp;)Lcom/twitter/app/common/app/n;

    move-result-object v0

    iput-object v0, p0, Lafo;->c:Lcom/twitter/app/common/app/n;

    return-void
.end method


# virtual methods
.method public a()Lbbq;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lafo;->c:Lcom/twitter/app/common/app/n;

    .line 61
    invoke-virtual {v0}, Lcom/twitter/app/common/app/n;->u()Lbbq;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable component method"

    .line 60
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbq;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lafo;->a()Lbbq;

    move-result-object v0

    return-object v0
.end method
