.class Lcom/twitter/library/api/upload/v;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/library/api/upload/ab;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/library/api/upload/s;


# direct methods
.method constructor <init>(Lcom/twitter/library/api/upload/s;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/twitter/library/api/upload/v;->a:Lcom/twitter/library/api/upload/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/api/upload/ab;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p1, Lcom/twitter/library/api/upload/ab;->a:Lcom/twitter/library/api/upload/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcom/twitter/library/api/upload/ab;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/upload/v;->a(Lcom/twitter/library/api/upload/ab;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
