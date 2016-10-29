.class final Lalv;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lczn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lczn",
        "<",
        "Lcom/twitter/model/moments/t;",
        "Lalz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/t;)Lalz;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lalz;

    invoke-direct {v0, p1}, Lalz;-><init>(Lcom/twitter/model/moments/t;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lcom/twitter/model/moments/t;

    invoke-virtual {p0, p1}, Lalv;->a(Lcom/twitter/model/moments/t;)Lalz;

    move-result-object v0

    return-object v0
.end method
